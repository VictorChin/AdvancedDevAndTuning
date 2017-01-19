connect / as sysdba

create tablespace tbfs datafile 'tbfs.f' size 100m
    reuse autoextend on
    extent management local
    segment space management auto;

create user tbfs identified by tbfs;
alter user tbfs default tablespace tbfs;
grant connect, resource, dbfs_role to tbfs;


connect tbfs/tbfs;

drop table tbfst;
purge recyclebin;

create table tbfst(
    key     varchar2(256)
            primary key
            check           (instr(key, '/') = 0),
    data    blob)
        tablespace tbfs
    lob(data)
        store as securefile
            (tablespace tbfs);

grant select on tbfst to dbfs_role;
grant insert on tbfst to dbfs_role;
grant delete on tbfst to dbfs_role;
grant update on tbfst to dbfs_role;
