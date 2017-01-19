@@Connect_As_Sys

create user Mini_HR_Owner
default tablespace Users
quota unlimited on Users
identified by p
/
-- Practice the principle of least privilege
-- Create Job is needed for using both Sys.DBMS_Parallel_Execute
grant
  Create Session,
  Create Table,
  Create Sequence,
  Create View,
  Create Procedure,
  Create Type,
  Create Trigger,
  Create Job,

  -- It's reasonable to let Mini_HR_Owner query the
  -- catalog and performance views.
  Select_Catalog_Role
to Mini_HR_Owner
/
grant Execute on Sys.Assert_No_Invalids to Mini_HR_Owner
/
grant Execute on Sys.Retry_DDL_With_Timeout_OK to Mini_HR_Owner
/
grant Execute on Sys.Parallel_Execute to Mini_HR_Owner
/
grant Execute on Sys.DBMS_Monitor to Mini_HR_Owner
/
----------
-- Practice the principle of least privilege
create user Mini_HR_API
default tablespace Users
quota unlimited on Users
identified by p
/
grant
  Create Session,
  Create Synonym
to Mini_HR_API
/
grant Execute on Sys.DBMS_Monitor to Mini_HR_API
/

begin x.p('Users Mini_HR_Owner, Mini_HR_API created.
As yet, these users aren''t editions-enabled.'); end;
/
