create table employee(id int, name varchar(20))

--create user sandhya with password = 'rduHiv74!@#$'

--create user [sandhya@chaithreddy60gmail.onmicrosoft.com] from external provider

--exec sp_addrolemember 'db_datareader',sandhya

--ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [sandhya]
--GO

--grant select on table to sandhya

--select * from sys.sysusers

--rolename and user name
select rp.name as 'Role Name' , mp.name as 'user'  from sys.database_role_members rm
inner join sys.database_principals rp on rm.role_principal_id = rp.principal_id
inner join sys.database_principals mp on rm.member_principal_id = mp.principal_id
