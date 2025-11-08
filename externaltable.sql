
create master key

--Drop database scoped credential [CRE_SEA-SQL-DBDEVTEST]

Create database scoped credential [CRE_SEA-SQL-DBDEVTEST]
WITH IDENTITY = 'chaithanya' , secret = 'rduHiv74!@#$'

-- drop external data source [EXT_SEA-SQL-DBDEVTEST]

create external data source [EXT_SEA-SQL-DBDEVTEST] with
(
TYPE = RDBMS,
LOCATION = 'chaithdev.database.windows.net',
DATABASE_NAME = 'devtest',
credential = [CRE_SEA-SQL-DBDEVTEST]
);

--drop external table [dbo].[employee]

create external table employee(id int, name varchar(20), dept_id int)
with
(
data_source = [EXT_SEA-SQL-DBDEVTEST]
--incase if table exist with same name
--schema_name='dbo',
--object_name = 'address'
)

select * from employee
