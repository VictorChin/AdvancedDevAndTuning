connect / as sysdba;

create or replace package body tbfs
as



    /*
     * Lookup store features (see dbms_dbfs_content.feature_XXX). Lookup
     * store id.
     *
     * A store ID identifies a provider-specific store, across
     * registrations and mounts, but independent of changes to the store
     * contents.
     *
     * I.e. changes to the store table(s) should be reflected in the
     * store ID, but re-initialization of the same store table(s) should
     * preserve the store ID.
     *
     * Providers should also return a "version" (either specific to a
     * provider package, or to an individual store) based on a standard
     * <a.b.c> naming convention (for <major>, <minor>, and <patch>
     * components).
     *
     */

    function    getFeatures(
        store_name          in      varchar2)
            return  integer
    is
    begin
        return dbms_dbfs_content.feature_locator;
    end;

    function    getStoreId(
        store_name          in      varchar2)
            return  number
    is
    begin
        return 1;
    end;

    function    getVersion(
        store_name          in      varchar2)
            return  varchar2
    is
    begin
        return '1.0.0';
    end;



    /*
     * Lookup pathnames by (store_name, std_guid) or (store_mount,
     * std_guid) tuples.
     *
     * If the underlying "std_guid" is found in the underlying store,
     * this function returns the store-qualified pathname.
     *
     * If the "std_guid" is unknown, a "null" value is returned. Clients
     * are expected to handle this as appropriate.
     *
     */

    function    getPathByStoreId(
        store_name          in      varchar2,
        guid                in      integer)
            return  varchar2
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;



    /*
     * DBFS SPI: space usage.
     *
     * Clients can query filesystem space usage statistics via the
     * "spaceUsage()" method. Providers are expected to support this
     * method for their stores (and to make a best effort determination
     * of space usage---esp. if the store consists of multiple
     * tables/indexes/lobs, etc.).
     *
     * "blksize" is the natural tablespace blocksize that holds the
     * store---if multiple tablespaces with different blocksizes are
     * used, any valid blocksize is acceptable.
     *
     * "tbytes" is the total size of the store in bytes, and "fbytes" is
     * the free/unused size of the store in bytes. These values are
     * computed over all segments that comprise the store.
     *
     * "nfile", "ndir", "nlink", and "nref" count the number of
     * currently available files, directories, links, and references in
     * the store.
     *
     * Since database objects are dynamically growable, it is not easy
     * to estimate the division between "free" space and "used" space.
     *
     */

    procedure   spaceUsage(
        store_name  in              varchar2,
        blksize     out             integer,
        tbytes      out             integer,
        fbytes      out             integer,
        nfile       out             integer,
        ndir        out             integer,
        nlink       out             integer,
        nref        out             integer)
    is
        nblks       number;
    begin
        select count(*) into nfile
            from tbfs.tbfst;
        ndir  := 0;
        nlink := 0;
        nref  := 0;

        select sum(bytes) into tbytes
            from user_segments;
        select sum(blocks) into nblks
            from user_segments;
        blksize := tbytes/nblks;
        fbytes  := 0;                                    /* change as needed */
    end;



    /*
     * DBFS SPI: notes on pathnames.
     *
     * All pathnames used in the SPI are store-qualified, i.e. a 2-tuple
     * of the form (store_name, pathname) (where the pathname is rooted
     * within the store namespace).
     *
     *
     * Stores/providers that support contentID-based access (see
     * "feature_content_id") also support a form of addressing that is
     * not based on pathnames. Items are identified by an explicit store
     * name, a "null" pathname, and possibly a contentID specified as a
     * parameter or via the "opt_content_id" property.
     *
     * Not all operations are supported with contentID-based access, and
     * applications should depend only on the simplest create/delete
     * functionality being available.
     *
     */



    /*
     * DBFS SPI: creation operations
     *
     * The SPI must allow the DBFS API to create directory, file, link,
     * and reference elements (subject to store feature support).
     *
     *
     * All of the creation methods require a valid pathname (see the
     * special exemption for contentID-based access below), and can
     * optionally specify properties to be associated with the pathname
     * as it is created. It is also possible for clients to fetch-back
     * item properties after the creation completes (so that
     * automatically generated properties (e.g. "std_creation_time") are
     * immediately available to clients (the exact set of properties
     * fetched back is controlled by the various "prop_xxx" bitmasks in
     * "prop_flags").
     *
     *
     * Links and references require an additional pathname to associate
     * with the primary pathname.
     *
     * File pathnames can optionally specify a BLOB value to use to
     * initially populate the underlying file content (the provided BLOB
     * may be any valid lob: temporary or permanent). On creation, the
     * underlying lob is returned to the client (if "prop_data" is
     * specified in "prop_flags").
     *
     * Non-directory pathnames require that their parent directory be
     * created first. Directory pathnames themselves can be recursively
     * created (i.e. the pathname hierarchy leading up to a directory
     * can be created in one call).
     *
     *
     * Attempts to create paths that already exist is an error; the one
     * exception is pathnames that are "soft-deleted" (see below for
     * delete operations)---in these cases, the soft-deleted item is
     * implicitly purged, and the new item creation is attempted.
     *
     *
     * Stores/providers that support contentID-based access accept an
     * explicit store name and a "null" path to create a new element.
     * The contentID generated for this element is available via the
     * "opt_content_id" property (contentID-based creation automatically
     * implies "prop_opt" in "prop_flags").
     *
     * The newly created element may also have an internally generated
     * pathname (if "feature_lazy_path" is not supported) and this path
     * is available via the "std_canonical_path" property.
     *
     * Only file elements are candidates for contentID-based access.
     *
     */

    procedure   createFile(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        content     in out nocopy   blob,
        prop_flags  in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
        guid        number;
    begin
        if (path = '/') then
            raise dbms_dbfs_content.invalid_path;
        end if;

        if content is null then
            content := empty_blob();
        end if;

        begin
            insert into tbfs.tbfst values (substr(path,2), content)
                returning data into content;
        exception
            when dup_val_on_index then
                raise dbms_dbfs_content.path_exists;
        end;

        select ora_hash(path) into guid from dual;

        properties := dbms_dbfs_content_properties_t(
            dbms_dbfs_content_property_t(
                'std:length',
                to_char(dbms_lob.getlength(content)),
                dbms_types.TYPECODE_NUMBER),
            dbms_dbfs_content_property_t(
                'std:guid',
                to_char(guid),
                dbms_types.TYPECODE_NUMBER));
    end;

    procedure   createLink(
        store_name  in              varchar2,
        srcPath     in              varchar2,
        dstPath     in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        prop_flags  in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   createReference(
        store_name  in              varchar2,
        srcPath     in              varchar2,
        dstPath     in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        prop_flags  in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   createDirectory(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        prop_flags  in              integer,
        recurse     in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;



    /*
     * DBFS SPI: deletion operations
     *
     * The SPI must allow the DBFS API to delete directory, file, link,
     * and reference elements (subject to store feature support).
     *
     *
     * By default, the deletions are "permanent" (get rid of the
     * successfully deleted items on transaction commit), but stores may
     * also support "soft-delete" features. If requested by the client,
     * soft-deleted items are retained by the store (but not typically
     * visible in normal listings or searches).
     *
     * Soft-deleted items can be "restore"d, or explicitly purged.
     *
     *
     * Directory pathnames can be recursively deleted (i.e. the pathname
     * hierarchy below a directory can be deleted in one call).
     * Non-recursive deletions can be performed only on empty
     * directories. Recursive soft-deletions apply the soft-delete to
     * all of the items being deleted.
     *
     *
     * Individual pathnames (or all soft-deleted pathnames under a
     * directory) can be restored or purged via the restore and purge
     * methods.
     *
     *
     * Providers that support filtering can use the provider "filter" to
     * identify subsets of items to delete---this makes most sense for
     * bulk operations (deleteDirectory, restoreAll, purgeAll), but all
     * of the deletion-related operations accept a "filter" argument.
     *
     *
     * Stores/providers that support contentID-based access can also
     * allow file items to be deleted by specifying their contentID.
     *
     */

    procedure   deleteFile(
        store_name  in              varchar2,
        path        in              varchar2,
        filter      in              varchar2,
        soft_delete in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        if (path = '/') then
            raise dbms_dbfs_content.invalid_path;
        end if;

        if ((soft_delete <> 0)      or
            (filter is not null))   then
            raise dbms_dbfs_content.unsupported_operation;
        end if;

        delete from tbfs.tbfst t
            where ('/' || t.key) = path;

        if sql%rowcount <> 1 then
            raise dbms_dbfs_content.invalid_path;
        end if;
    end;

    procedure   deleteContent(
        store_name  in              varchar2,
        contentID   in              raw,
        filter      in              varchar2,
        soft_delete in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   deleteDirectory(
        store_name  in              varchar2,
        path        in              varchar2,
        filter      in              varchar2,
        soft_delete in              integer,
        recurse     in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   restorePath(
        store_name  in              varchar2,
        path        in              varchar2,
        filter      in              varchar2,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   purgePath(
        store_name  in              varchar2,
        path        in              varchar2,
        filter      in              varchar2,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   restoreAll(
        store_name  in              varchar2,
        path        in              varchar2,
        filter      in              varchar2,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   purgeAll(
        store_name  in              varchar2,
        path        in              varchar2,
        filter      in              varchar2,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;



    /*
     * DBFS SPI: path get/put operations.
     *
     * Existing path items can be accessed (for query or for update) and
     * modified via simple get/put methods.
     *
     * All pathnames allow their metadata (i.e. properties) to be
     * read/modified. On completion of the call, the client can request
     * (via "prop_flags") specific properties to be fetched as well.
     *
     * File pathnames allow their data (i.e. content) to be
     * read/modified. On completion of the call, the client can request
     * (via the "prop_data" bitmaks in "prop_flags") a new BLOB locator
     * that can be used to continue data access.
     *
     * Files can also be read/written without using BLOB locators, by
     * explicitly specifying logical offsets/buffer-amounts and a
     * suitably sized buffer.
     *
     *
     * Update accesses must specify the "forUpdate" flag. Access to link
     * pathnames can be implicitly and internally deferenced by stores
     * (subject to feature support) if the "deref" flag is
     * specified---however, this is dangerous since symbolic links are
     * not always resolvable.
     *
     *
     * The read methods (i.e. "getPath" where "forUpdate" is "false"
     * also accepts a valid "asof" timestamp parameter that can be used
     * by stores to implement "as of" style flashback queries. Mutating
     * versions of the "getPath" and the "putPath" methods do not
     * support as-of modes of operation.
     *
     *
     * "getPathNowait" implies a "forUpdate", and, if implemented (see
     * "feature_nowait"), allows providers to return an exception
     * (ORA-54) rather than wait for row locks.
     *
     */

    procedure   getPath(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        content     out    nocopy   blob,
        item_type   out             integer,
        prop_flags  in              integer,
        forUpdate   in              integer,
        deref       in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
        guid        number;
    begin
        if (deref <> 0) then
            raise dbms_dbfs_content.unsupported_operation;
        end if;

        select ora_hash(path) into guid from dual;

        if (path = '/') then
            if (forUpdate <> 0) then
                raise dbms_dbfs_content.unsupported_operation;
            end if;

            content    := null;
            item_type  := dbms_dbfs_content.type_directory;
            properties := dbms_dbfs_content_properties_t(
            dbms_dbfs_content_property_t(
                'std:guid',
                to_char(guid),
                dbms_types.TYPECODE_NUMBER));

            return;
        end if;

        begin
            if (forUpdate <> 0) then
                select t.data into content from tbfs.tbfst t
                    where ('/' || t.key) = path
                    for update;
            else
                select t.data into content from tbfs.tbfst t
                    where ('/' || t.key) = path;
            end if;
        exception
            when no_data_found then
                raise dbms_dbfs_content.invalid_path;
        end;

        item_type  := dbms_dbfs_content.type_file;
        properties := dbms_dbfs_content_properties_t(
            dbms_dbfs_content_property_t(
                'std:length',
                to_char(dbms_lob.getlength(content)),
                dbms_types.TYPECODE_NUMBER),
            dbms_dbfs_content_property_t(
                'std:guid',
                to_char(guid),
                dbms_types.TYPECODE_NUMBER));
    end;

    procedure   getPathNowait(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        content     out    nocopy   blob,
        item_type   out             integer,
        prop_flags  in              integer,
        deref       in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   getPath(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        amount      in out          number,
        offset      in              number,
        buffer      out    nocopy   raw,
        prop_flags  in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
        content     blob;
        guid        number;
    begin
        if (path = '/') then
            raise dbms_dbfs_content.unsupported_operation;
        end if;

        begin
            select t.data into content from tbfs.tbfst t
                where ('/' || t.key) = path;
        exception
            when no_data_found then
                raise dbms_dbfs_content.invalid_path;
        end;

        select ora_hash(path) into guid from dual;
        dbms_lob.read(content, amount, offset, buffer);

        properties := dbms_dbfs_content_properties_t(
            dbms_dbfs_content_property_t(
                'std:length',
                to_char(dbms_lob.getlength(content)),
                dbms_types.TYPECODE_NUMBER),
            dbms_dbfs_content_property_t(
                'std:guid',
                to_char(guid),
                dbms_types.TYPECODE_NUMBER));
    end;

    procedure   getPath(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        amount      in out          number,
        offset      in              number,
        buffers     out    nocopy   dbms_dbfs_content_raw_t,
        prop_flags  in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   putPath(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        content     in out nocopy   blob,
        item_type   out             integer,
        prop_flags  in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
        guid        number;
    begin
        if (path = '/') then
            raise dbms_dbfs_content.unsupported_operation;
        end if;

        if content is null then
            content := empty_blob();
        end if;

        update tbfs.tbfst t
            set t.data = content
            where ('/' || t.key) = path
            returning t.data into content;

        if sql%rowcount <> 1 then
            raise dbms_dbfs_content.invalid_path;
        end if;

        select ora_hash(path) into guid from dual;

        item_type  := dbms_dbfs_content.type_file;
        properties := dbms_dbfs_content_properties_t(
            dbms_dbfs_content_property_t(
                'std:length',
                to_char(dbms_lob.getlength(content)),
                dbms_types.TYPECODE_NUMBER),
            dbms_dbfs_content_property_t(
                'std:guid',
                to_char(guid),
                dbms_types.TYPECODE_NUMBER));
    end;

    procedure   putPath(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        amount      in              number,
        offset      in              number,
        buffer      in              raw,
        prop_flags  in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
        content     blob;
        guid        number;
    begin
        if (path = '/') then
            raise dbms_dbfs_content.unsupported_operation;
        end if;

        begin
            select t.data into content from tbfs.tbfst t
                where ('/' || t.key) = path
                for update;
        exception
            when no_data_found then
                raise dbms_dbfs_content.invalid_path;
        end;

        select ora_hash(path) into guid from dual;
        dbms_lob.write(content, amount, offset, buffer);

        properties := dbms_dbfs_content_properties_t(
            dbms_dbfs_content_property_t(
                'std:length',
                to_char(dbms_lob.getlength(content)),
                dbms_types.TYPECODE_NUMBER),
            dbms_dbfs_content_property_t(
                'std:guid',
                to_char(guid),
                dbms_types.TYPECODE_NUMBER));
    end;

    procedure   putPath(
        store_name  in              varchar2,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        written     out             number,
        offset      in              number,
        buffers     in              dbms_dbfs_content_raw_t,
        prop_flags  in              integer,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;



    /*
     * DBFS SPI: rename/move operations.
     *
     * Pathnames can be renamed or moved, possibly across directory
     * hierarchies and mount-points, but within the same store.
     *
     *
     * Non-directory pathnames previously accessible via "oldPath" are
     * renamed as a single item subsequently accessible via "newPath";
     * assuming that "newPath" does not already exist.
     *
     * If "newPath" exists and is not a directory, the rename implicitly
     * deletes the existing item before renaming "oldPath". If "newPath"
     * exists and is a directory, "oldPath" is moved into the target
     * directory.
     *
     *
     * Directory pathnames previously accessible via "oldPath" are
     * renamed by moving the directory and all of its children to
     * "newPath" (if it does not already exist) or as children of
     * "newPath" (if it exists and is a directory).
     *
     *
     * Stores/providers that support contentID-based access and lazy
     * pathname binding also support the "setPath" method that
     * associates an existing "contentID" with a new "path".
     *
     */

    procedure   renamePath(
        store_name  in              varchar2,
        oldPath     in              varchar2,
        newPath     in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   setPath(
        store_name  in              varchar2,
        contentID   in              raw,
        path        in              varchar2,
        properties  in out nocopy   dbms_dbfs_content_properties_t,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;



    /*
     * DBFS SPI: directory navigation and search.
     *
     * The DBFS API can list or search the contents of directory
     * pathnames, optionally recursing into sub-directories, optionally
     * seeing soft-deleted items, optionally using flashback "as of" a
     * provided timestamp, and optionally filtering items in/out within
     * the store based on list/search predicates.
     *
     */

    function    list(
        store_name  in              varchar2,
        path        in              varchar2,
        filter      in              varchar2,
        recurse     in              integer,
        ctx         in              dbms_dbfs_content_context_t)
            return  dbms_dbfs_content_list_items_t
                pipelined
    is
    begin
        for rws in (select * from tbfs.tbfst)
        loop
            pipe row(dbms_dbfs_content_list_item_t(
                '/' || rws.key, rws.key, dbms_dbfs_content.type_file));
        end loop;
    end;

    function    search(
        store_name  in              varchar2,
        path        in              varchar2,
        filter      in              varchar2,
        recurse     in              integer,
        ctx         in              dbms_dbfs_content_context_t)
            return  dbms_dbfs_content_list_items_t
                pipelined
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;



    /*
     * DBFS SPI: locking operations.
     *
     * Clients of the DBFS API can apply user-level locks to any valid
     * pathname (subject to store feature support), associate the lock
     * with user-data, and subsequently unlock these pathnames.
     *
     * The status of locked items is available via various optional
     * properties (see "opt_lock*" above).
     *
     *
     * It is the responsibility of the store (assuming it supports
     * user-defined lock checking) to ensure that lock/unlock operations
     * are performed in a consistent manner.
     *
     */

    procedure   lockPath(
        store_name  in              varchar2,
        path        in              varchar2,
        lock_type   in              integer,
        lock_data   in              varchar2,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;

    procedure   unlockPath(
        store_name  in              varchar2,
        path        in              varchar2,
        ctx         in              dbms_dbfs_content_context_t)
    is
    begin
        raise dbms_dbfs_content.unsupported_operation;
    end;



    /*
     * DBFS SPI: access checks.
     *
     * Check if a given pathname (store_name, path, pathtype) can be
     * manipulated by "operation (see the various
     * "dbms_dbfs_content.op_xxx" opcodes) by "principal".
     *
     * This is a convenience function for the DBFS API; a store that
     * supports access control still internally performs these checks to
     * guarantee security.
     *
     */

    function    checkAccess(
        store_name  in              varchar2,
        path        in              varchar2,
        pathtype    in              integer,
        operation   in              varchar2,
        principal   in              varchar2)
            return  integer
    is
    begin
        return 1;
    end;
end;
/
show errors;
