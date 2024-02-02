![SQL2](https://github.com/Sudippdn/MS-SQL/assets/104957400/65bbc4f4-8bba-4cd4-bf08-c7f7f1e091a8)

# MS SQL
### Intoduction:
MS SQL, which stands for Microsoft SQL Server, is a relational database management system (RDBMS) developed by Microsoft. It's a software program that allows you to store, organize, and access data efficiently.

## How to download?
You can visit the official server of Microsoft SQL Server management Studio and install, For shortcut [click here](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)

> [!Note]
>## Things to cover to master MS SQL:
>Here I have mentioned the topics you need to cover based on their difficulty level. The levels are:
> 
>### Basic Level:
>In basic Level, you can learn to
>i) create a new query and a table
>ii) Insert the data inside the table
>iii) Access the data from outside the database
>iv) Learn to display attributes and its elements from the table
>v) Commenting the codes
>vi) Execute Individual Codes from the multiple queries
>vii) Where Statement, Group BY, Order BY
>
>### Intermediate:
>To complete the intermediate level, you should know the following topics:
>
>- JOINS 
>- Unions
>- Case statements
>- Updating/Deleting Data
>- Partition By 
>- Data Types
>- Aliasing 
>- Creating Views
>- Having vs Group by statement
>- Getdate()
>- Primary Key vs Foreign Key
>
>### Advanced:
>
>- CTEs
>- SYS tables
>- Subqueries
>- Temp Tables
>- String Functions (TRIM,LTRIM, Replace, Substring, Upper, Lower)
>- Regular Expression
>- Stored Procedures
>- Importing Dta fro, different file Types/Sources
>- Exporting Data to different file types


# Let's Brake Down the individual levels

## Basic Level

### Creating new table
TO create a new table in MS SQL, you need to type 
``` CREATE TABLE [GiveTable Name] ```

After making table, give attributes,
```sql
CREATE TABLE [GiveTable Name]
( IDNumber int,
  FirstName charvar(50),
  LastName charvar(50),
  Age int)
```
You can replace the names of the attribute to any form(either string or integer) but should mentioned `charvar(50)` for string and `int` for integer.

## SELECT and FROM clauses
SELECT clause specifies the columns from which data values are to be retrieved by the query where as FROM clause specify the table of the database. SELECT and FROM clauses always comes together in structured query language.

The basic syntax of SELECT and FROM clauses is:
```sql
SELECT [Attribute], [Attribute], ...., [Attribute]
FROM [TableName]
```

## SELECT ALL
In SQL, select all can be performed by passing star(*) along with SELECT statement ie `SELECT *`.

For example:
Suppose a table has attributes like, CustomerID, C_FirstName, C_LastName, C_ContactNo, C_Address then instead of choosing like `SELECT CustomerID, C_FirstName, C_LastName, C_ContactNo, C_Address`, we can simply perform `SELECT *`

## INSERT INTO Clause
`INSERT INTO` clause is used to insert the values of the attributes in a existing table. `VALUE` is passed along Table Name. While inserting the values the following syntax is passed:
```sql
INSERT INTO [TableName] VALUES
([value of first attribute], [value of second attribute], ..... [value of Nth attribute]),
([value of first attribute], [value of second attribute], ..... [value of Nth attribute]),
([value of first attribute], [value of second attribute], ..... [value of Nth attribute])
```

## Where Clause
`WHERE` caluse is a cluse which plays a vital role to specify the row while performing various task after passing a certain condition. It is mostly used during deletion, replacing, inserting values, and so on which is based on overall manipulation of data. `WHERE` clause helps us to make sure the selected row is ready to manipulate accourdingly.

Syntax: 
```sql
SELECT *
FROM [TableName]
WHERE [AttributeName] = integer or 'Char' or 'String'
```


## CASE Statement:
I found `CASE` statement is same like `if/else` statement in other programming language like `python` where `WHEN` and `THEN` statements are used instead. There should be at least a pair of `WHEN/THEN` to use `CASE` clauses. The CASE clauses always ends with `END` keyword.

To use to the `CASE` clause, the basic syntax is:
```sql
CASE
	WHEN JobTitle = 'Salesman' Then Salary + (Salary * 0.1)
	WHEN JobTitle = 'Technical' Then Salary + (Salary * 0.1)
	WHEN JobTitle = 'Driver' Then Salary + (Salary * 0.1)
	ELSE Salary + (Salary * 0.8)
END AS SalaryAfterRise
```

## HAVING Clause
While talking about the `HAVING clause`, In MS SQL, the HAVING clause is used to filter groups of data after they have been aggregated using a `GROUP BY` clause. It works in conjunction with aggregate functions `(like SUM, COUNT, AVG, MAX, MIN)` to apply conditions to the results of the grouping.

The basic way of using this clause is:
```sql
Select JobTitle, AVG(Salary)	
From SQLProject.dbo.EmployeeDemoGraphics
Join SQLProject.dbo.EmployeeSalary
	ON EmployeeDemoGraphics.EmployeeId = EmployeeSalary.EmployeeID
Group by JobTitle
Having AVG(Salary) > 1
Order by avg(salary)
```
