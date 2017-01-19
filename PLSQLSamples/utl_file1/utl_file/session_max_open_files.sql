alter system set session_max_open_files=50 /* ORA-02095 */;

select value from v$parameter where lower(name) = 'session_max_open_files';


drop table drop_me;

create table drop_me ( t bfile );
insert into drop_me values ( bfilename ( 'UTL_FILE_TEST', 'file_1.txt' ) );
insert into drop_me values ( bfilename ( 'UTL_FILE_TEST', 'file_2.txt' ) );


declare
  v_buff varchar2(32000);
  v_nof_open_files integer := 50;

  type file_r is record ( file Utl_File.file_type );
  type files_t is table of file_r index by binary_integer;
  v_files files_t;
  v_filename varchar2(80);
begin

  for j in 1..v_nof_open_files
  loop
    v_filename := 'file_' || to_char(j) || '.txt';
    v_files(j).file := Utl_File.Fopen (
      location  => 'UTL_FILE_TEST',
      filename  => v_filename,

      open_mode => 'w' );
    Utl_File.Put_Line (
      file   => v_files(j).file,
      buffer => 'This is ' || v_filename );
    Dbms_Output.Put_Line ( to_char(j) );
  end loop;


  for j in ( select t from drop_me )
  loop
    Dbms_Lob.Open ( j.t, Dbms_Lob.file_readonly );
    -- Dbms_Lob.Close ( j.t );
  end loop;

  for j in 1..v_nof_open_files
  loop

    Utl_File.Fclose ( file => v_files(j).file );
  end loop;

exception
  /*
    Works fine when v_nof_open_files integer = 50
    But when v_nof_open_files integer = 51, the 51st Fopen causes...
  */
  when Utl_File.Invalid_Operation then

    Utl_File.Fclose_All;
    Raise_Application_Error ( -20000, 'Invalid_Operation trapped' );
end;
/

???? ORA-22290: operation would exceed the maximum number of opened files or LOBs


