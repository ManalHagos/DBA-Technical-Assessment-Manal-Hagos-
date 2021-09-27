select * from [ca-500];
alter table [ca-500] add  CAUSID varchar(6)


--update [ca-500] 
--set CAUSID = [us-500].CAUSID 
--from [ca-500] inner join [us-500] on [ca-500].first_name = [us-500].last_name

alter table [ca-500]  add CAUSID varchar(6);

update [ca-500] set CAUSID = (select CAUSID from [us-500] where [ca-500].first_name = [us-500].last_name) 
  where exists (select CAUSID from [us-500] where [ca-500].first_name = [us-500].last_name);
   

--CREATE TRIGGER [DBA Technical Assessment Manal Hagos.]CAUSID.
--ON table_name
--AFTER  {[INSERT],[UPDATE],[DELETE]}
--[NOT FOR REPLICATION]
--AS
--{sql_statements}

-- Trigger on a CREATE, ALTER, DROP, GRANT, DENY, 
-- REVOKE or UPDATE statement (DDL Trigger)  
  


