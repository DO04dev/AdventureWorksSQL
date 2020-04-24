use [AdventureWorks2017]

--
SELECT * FROM HumanResources.Department

--SHOW ME ALL THE DEPARTMENT NAMES.
SELECT name from HumanResources.Department

--show me all the group
select groupname from HumanResources.Department

--Show me all the distinct groupname - Unique values
select distinct groupname from HumanResources.Department

--show me all the department name who are part of manufacturing
select name, groupname from HumanResources.Department
where groupname like 'manufacturing' --exact match

--Give me all the employees from the employee table
select * from HumanResources.Employee

--give me a list of all employees who have organisation level of 2
select * from HumanResources.Employee
where OrganizationLevel=2

--give me a list of all employees of all employees who have orglevel = 2 or 3
select * from HumanResources.Employee 
where OrganizationLevel in(2,3)

--give me a list of employees who have a title as facilities manager
select * from HumanResources.Employee
where JobTitle like 'Facilities Manager' --exact match

--give me all the employees who have the word manager in their title
select * from HumanResources.Employee where JobTitle like '%Manager' --anything can come before mananger, not after

--give me all the employees who have the word manager in their title
select * from HumanResources.Employee where JobTitle like '%Control%' --anything can come or after before control, not after


--give me all employees born after Jan 1, 1980
select * from HumanResources.Employee where BirthDate>'1/1/1980'

--give me all employees who are born between jan 1, 1970 and jan1, 1980
select * from HumanResources.Employee where BirthDate>'1/1/1970' and BirthDate<'1/1/1980'
select * from HumanResources.Employee 
where BirthDate between '1/1/1970' and '1/1/1980'

--calculate columns
select name, listprice from Production.Product
select name, listprice, listprice + 10 AS Total from Production.Product

--INTO CLAUSE ][
select name, listprice, listprice + 10 AS Total into Production.Production2 from Production.Product --new permanent table
select * from Production.Production2

select name, listprice, listprice + 10 AS Total into Production.#temporaryTable from Production.Product --temporary table, cloased when you close session
select * from production.#temporarytable

--Delete data from table
delete from production.Production2
where name like 'Bearing Ball'
select * from Production.Production2

--Update
update production.Production2
set name = 'Blade_New'
where name like 'Blade'
select * from Production.Production2


