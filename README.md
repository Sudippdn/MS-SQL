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
You can replace the names of the attribute to any form(either string or integer) but should mentioned "charvar(50)" for string and "int" for integer.




