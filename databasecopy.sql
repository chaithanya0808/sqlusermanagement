create database dba1 as copy of chaithdev.devtest
--(EDITION = 'standard', SERVICE_OBJECTIVE = 'S0', MAXSIZE = 250 GB );

select * from sys.dm_database_copies

select state_desc, * from sys.databases
where state_desc <> 'online'


select major_resource_id,
percent_complete,
operation,
start_time,
last_modify_time,
DATEDIFF(MINUTE, start_time, last_modify_time) duration_minutes
from master.sys.dm_operation_status
where operation like '%create database copy%'
