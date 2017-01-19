/* ------------------------------------------------------------------------- */
/* -------------- TaBleFileSystem: A simple DBFS/SPI provider -------------- */
/* ------------------------------------------------------------------------- */

This README describes an example "store provider" for DBFS that exposes
a relational table containing a BLOB column as a flat, non-hierarchical
filesystem, i.e. a collection of named files.

The rest of the document assumes that you have installed the Oracle
RDBMS 11gR2, and are familiar with DBFS concepts/documentation, and have
installed/used dbfs_client/FUSE in order to mount and access filesystems
backed by the standard SFS store provider.


The TaBleFileSystem Store Provider ("tbfs") does not aim to be
feature-rich or even complete---it does however provide a sufficiently
simple demonstration of what (little) effort it takes for users of the
DBFS to write their own custom providers that expose their custom table(s)
via dbfs_client to traditional filesystem programs.

The TBFS can be used as a skeleton for such custom providers, or can be
used as a learning tool for users to become familiar with the DBFS and
its SPI.




/* ------------------------------------------------------------------------- */
/* ------------------------ Installation and Setup ------------------------- */
/* ------------------------------------------------------------------------- */

The TBFS consists of the following SQL files:

    tbfs.sql        toplevel driver script
    tbl.sql         script to create a test user, tablespace,
                    the table backing the filesystem, etc.

    spec.sql        the SPI specification of the tbfs
    body.sql        the SPI implementation of the tbfs

    capi.sql        DBFS register/mount script


To install the TBFS, just run "tbfs.sql" as SYSDBA, in the directory
that contains all of the above files. "tbfs.sql" will load the other
SQL files in the proper sequence.

Ignoring any name conflicts, all of the SQL files should load without any
compilation errors.  All SQL files should also load without any runtime
errors (depending on the value of the "plsql_warnings" init.ora parameter,
you may see various innocuous warnings).

If there are any name conflicts (tablespace name TBFS, datafile name
"tbfs.f", user name TBFS, package name TBFS), the appropriate references
in the various SQL files need to be changed consistently.



/* ------------------------------------------------------------------------- */
/* ------------------------------- TBFS Use -------------------------------- */
/* ------------------------------------------------------------------------- */

Once the TBFS has been installed, "dbfs_client" connected as user TBFS
will see a simple, non-hierarchical, filesystem backed by an RDBMS table
(TBFS.TBFST).

Files can be added/removed from this filesystem either via SQL
(i.e. via DML on the underlying table), via Unix utilities (mediated by
"dbfs_client") or via PL/SQL (using the DBFS APIs).

Changes to the filesystem made via any of the access methods will be
visible, in a _transactionally consistent manner_ (i.e. at commit/rollback
boundaries) to all of the other access methods.



/* ------------------------------------------------------------------------- */
/* ---------------------------- TBFS internals ----------------------------- */
/* ------------------------------------------------------------------------- */

The TBFS is necessarily simple since its primary purpose is to serve as
a teaching/learning example. However, the implementation shows the path
towards a robust, production-quality custom SPI that can plug into the
DBFS, and expose existing relational data as Unix filesystems.

The TBFS makes various simplifications in order to remain concise
(however, these should _not_ be taken as inviolable limitations of DBFS
or the SPI):

* The TBFS SPI package handles only a single table with a hard-coded name
  (TBFS.TBFST). It is possible to use dyamic SQL and additional
  configuration information to have a single SPI package support multiple
  tables, each as a separate filesystem (or even to unify data in multiple
  tables into a single filesystem).

* The TBFS does not support filesystem hierarchies; it imposes a flat
  namespace: a collection of files, identified by a simple item name,
  under a virtual "/" root directory.  Implementing directory hierarchies
  is significantly more complex since it requires the store provider to
  manage parent/child relationships in a consistent manner.

  Moreover, _existing relational data_ (the kind of data that TBFS is
  attempting to expose as a filesystem) does not typically have inter-row
  relationships that form a natural directory/file hierarchy.

* Since the TBFS supports only a flat namespace, most methods
  in the SPI are unimplemented, and the method bodies raise a
  "dbms_dbfs_content.unsupported_operation" exception. This exception is
  also a good starting point for developers writing their own custom
  SPI---once can start with a simple SPI skeleton cloned from the
  "dbms_dbfs_content_spi" package, default all method bodies to ones
  that raise this exception, and subsequently fill in more realistic
  implementations incrementally.

* The table underlying the TBFS is close to being the simplest possible
  structure (a key/name column and a lob column). This means that various
  properties used/expected by DBFS and dbfs_client have to be generated
  dynamically (the TBFS implementation shows how this is done for the
  "std:guid" property).

  Other properties (like Unix-style timestamps) are not implemented
  at all. This still allows a surprisingly functional filesystem to
  be implemented, but users writing their own custom SPIs can easily
  incorporate support for additional DBFS properties by expanding the
  structure of their underlying table(s) to include additional columns
  as needed, or by using existing columns in their existing tables to
  provide the values for these DBFS properties.

* The TBFS does not implement a rename/move method; adding support for
  this (a suitable UPDATE statement in the "renamePath" method) is left
  as an exercise for the user.

* The TBFS example uses the string "tbfs" in multiple places (tablespace,
  datafile, user, package, and even filesystem name). All these uses of
  "tbfs" belong in different namespaces---identifying which namespace
  corresponds to a specific occurrence of the string "tbfs" in these
  examples is also a good learning exercise to make sure that the DBFS
  concepts are clear in one's mind.


/* ------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------- */
