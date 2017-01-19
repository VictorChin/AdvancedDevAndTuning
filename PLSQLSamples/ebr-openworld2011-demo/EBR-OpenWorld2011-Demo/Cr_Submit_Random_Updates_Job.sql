alter session set Plsql_Warnings = 'Enable:All'
/
create procedure OBE_Helper.Submit_Random_Updates_Job(
  Edition        in All_Editions.Edition_Name%type)
authid Definer is
  Job_Name constant varchar2(30) := Upper('Random_Updates_In_'||Edition);
begin
  declare
    Job_Doesnt_Exist exception;
    pragma Exception_Init(Job_Doesnt_Exist, -27475);
  begin
    Sys.DBMS_Scheduler.Drop_Job(
      Job_Name          => Job_Name,
      Force             => true);
  exception when Job_Doesnt_Exist then null; end;

  Sys.DBMS_Scheduler.Create_Job(
    Job_Name            => Job_Name,
    Job_Type            => 'STORED_PROCEDURE',
    Job_Action          => Upper('OBE_Helper.Do_Random_DML'),
    Number_Of_Arguments => 1,
    Enabled             => false,
    Auto_Drop           => true);

  Sys.DBMS_Scheduler.Set_Job_Argument_Value(
    Job_Name          => Job_Name,
    Argument_Position => 1,
    Argument_Value    => Edition);

  Sys.DBMS_Scheduler.Run_Job(
    Job_Name            => Job_Name,
    Use_Current_Session => false);

  <<b>>declare
    Max_Wait constant integer := 2000; -- centiseconds
    t0 constant integer := DBMS_Utility.Get_Time();
    Waiting_For_Job_To_Start boolean not null := true;
    Failed_To_Start_Job exception;
    State User_Scheduler_Jobs.State%type not null := '?';
  begin
    while Waiting_For_Job_To_Start loop
      Waiting_For_Job_To_Start := false;
      begin
        select j.State
        into b.State
        from User_Scheduler_Jobs j
        where j.Job_Name = Submit_Random_Updates_Job.Job_Name;
        if State <> 'RUNNING' then
          raise Failed_To_Start_Job;
        end if;
      exception when No_Data_Found or Failed_To_Start_Job then
        Waiting_For_Job_To_Start := true;
      end;

      if DBMS_Utility.Get_Time() - t0 > Max_Wait then
        Raise_Application_Error(-20000,
          'Submit_Random_Updates_Job: Failed to start job in '||Edition);
      end if;
    end loop;
  end b;
end Submit_Random_Updates_Job;
/
grant execute on OBE_Helper.Submit_Random_Updates_Job to Mini_HR_Owner, EBR_Admin
/

create procedure OBE_Helper.Drop_Random_Updates_Job(
  Edition        in All_Editions.Edition_Name%type)
authid Definer is
  Job_Name constant varchar2(30) := Upper('Random_Updates_In_'||Edition);
begin
  declare
    Job_Doesnt_Exist exception;
    pragma Exception_Init(Job_Doesnt_Exist, -27475);
  begin
    Sys.DBMS_Scheduler.Drop_Job(
      Job_Name          => Job_Name,
      Force             => true);
  exception when Job_Doesnt_Exist then null; end;

end Drop_Random_Updates_Job;
/
grant execute on OBE_Helper.Drop_Random_Updates_Job to Mini_HR_Owner, EBR_Admin
/
