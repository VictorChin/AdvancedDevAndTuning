COLUMN "n"                    FORMAT 9999999999999999999999999999
COLUMN "Status"               FORMAT A8
COLUMN "Edition_Name"         FORMAT A20
COLUMN "Parent_Edition_Name"  FORMAT A20
COLUMN "Owner"                FORMAT A15
COLUMN "Object_Type"          FORMAT A15
COLUMN "Object_Name"          FORMAT A30

--------------------------------------------------------------------------------


-- To_do: join with DBA_Objects and order by Created.
with v as (
  select
    Edition_Name,
    Parent_Edition_Name,
    case Edition_Name
      when 'ORA$BASE'     then 1
      when 'PRE_UPGRADE'  then 2
      when 'POST_UPGRADE' then 3
      else                     99
    end n
  from DBA_Editions)

select
  I_Cap(Edition_Name)             "Edition_Name",
  I_Cap(Parent_Edition_Name)      "Parent_Edition_Name"
from v
order by n
/

--------------------------------------------------------------------------------

select
  Count(*)                     "n",
  I_Cap(Owner)                 "Owner",
  Lower(Object_Type)           "Object_Type",
  I_Cap(Object_Name)           "Object_Name"
from DBA_Objects_AE
where Object_Type not in ('TABLE', 'INDEX', 'SEQUENCE', 'JOB', 'NON-EXISTENT')
and Edition_Name is not null
group by Owner, Object_Type, Object_Name
order by "n", "Owner", "Object_Type", "Object_Name"
/

--------------------------------------------------------------------------------

-- To_do: join DBA_Editions with DBA_Objects and order by Created.
with v as (
  select
    Status,
    Edition_Name,
    Owner,
    Object_Type,
    Object_Name,

    case Edition_Name
      when 'ORA$BASE'     then 1
      when 'PRE_UPGRADE'  then 2
      when 'POST_UPGRADE' then 3
      else                     99
    end                             n

  from DBA_Objects_AE
  where Object_Type not in ('TABLE', 'INDEX', 'SEQUENCE', 'JOB', 'NON-EXISTENT')
  and Edition_Name is not null)

select
  Lower(Status)                   "Status",
  I_Cap(Edition_Name)             "Edition_Name",
  I_Cap(Owner)                    "Owner",
  Lower(Object_Type)              "Object_Type",
  I_Cap(Object_Name)              "Object_Name"

from v
order by "Status", n, "Owner", "Object_Type", "Object_Name"
/
