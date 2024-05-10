0x00. MySQL advanced
concept:
	Advanced SQL

Resources read or watch:
	MySQL cheatsheet
	MySQL Performance: How To Leverage MySQL 	Database Indexing
	Stored Procedure
	Triggers
	Views
	Functions and Operators
	Trigger Syntax and Examples
	CREATE TABLE Statement
	CREATE PROCEDURE and CREATE FUNCTION Statements
	CREATE INDEX Statement
	CREATE VIEW Statement
Learning Objectives
	At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

General
	How to create tables with constraints
	How to optimize queries by adding indexes
	What is and how to implement stored procedures and functions in MySQL
	What is and how to implement views in MySQL
	What is and how to implement triggers in MySQL

General Requirements
	All your files will be executed on Ubuntu 18.04 LTS using MySQL 5.7 (version 5.7.30)
	All your files should end with a new line
	All your SQL queries should have a comment just before (i.e. syntax above)
	All your files should start by a comment describing the task
	All SQL keywords should be in uppercase (SELECT, WHERE…)
	A README.md file, at the root of the folder of the project, is mandatory
	The length of your files will be tested using wc
More Info: Comments for your SQL file:
$ cat my_script.sql
-- 3 first students in the Batch ID=3
-- because Batch 3 is the best!


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Task 0. We are all unique!
mandatory
Write a SQL script that creates a table users following these requirements:

With these attributes:
	id, integer, never null, auto increment and primary key
	email, string (255 characters), never null and unique
	name, string (255 characters)
If the table already exists, your script should not fail
Your script can be executed on any database
	Context: Make an attribute unique directly in the table schema will enforced your business rules and avoid bugs in your application


Repo:

GitHub repository: alx-backend-storage
Directory: 0x00-MySQL_Advanced
File: 0-uniq_users.sql
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  
Task 1. In and not out

Write a SQL script that creates a table users following these requirements:

With these attributes:
id, integer, never null, auto increment and primary key
email, string (255 characters), never null and unique
name, string (255 characters)
country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)
If the table already exists, your script should not fail
Your script can be executed on any database

Repo:

GitHub repository: alx-backend-storage
Directory: 0x00-MySQL_Advanced
File: 1-country_users.sql
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  
Task 2. Best band ever!

Write a SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans

Repo:

GitHub repository: alx-backend-storage
Directory: 0x00-MySQL_Advanced
File: 2-fans.sql
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  
Task 3. Old school band

Write a SQL script that lists all bands with Glam rock as their main style, ranked by their longevity


GitHub repository: alx-backend-storage
Directory: 0x00-MySQL_Advanced
File: 3-glam_rock.sql
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  
Task 4. Buy buy buy

Write a SQL script that creates a trigger that decreases the quantity of an item after adding a new order.

Quantity in the table items can be negative.

Context: Updating multiple tables for one action from your application can generate issue: network disconnection, crash, etc… to keep your data in a good shape, let MySQL do it for you!


Repo:

GitHub repository: alx-backend-storage
Directory: 0x00-MySQL_Advanced
File: 4-store.sql
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  
Task 5. Email validation to sent
mandatory
Write a SQL script that creates a trigger that resets the attribute valid_email only when the email has been changed.

Context: Nothing related to MySQL, but perfect for user email validation - distribute the logic to the database itself!

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
Task 6. Add bonus

Write a SQL script that creates a stored procedure AddBonus that adds a new correction for a student.

Requirements:

	Procedure AddBonus is taking 3 inputs (in this order):
		user_id, a users.id value (you can assume user_id is linked to an existing users)
		project_name, a new or already exists projects - if no projects.name found in the table, you should create it
		score, the score value for the correction
Context: Write code in SQL is a nice level up!
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Task 7. Average score

Write a SQL script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student. Note: An average score can be a decimal

Requirements:

Procedure ComputeAverageScoreForUser is taking 1 input:
user_id, a users.id value (you can assume user_id is linked to an existing users)
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Task 8. Optimize simple search
mandatory
Write a SQL script that creates an index idx_name_first on the table names and the first letter of name.

Requirements:

Import this table dump: names.sql.zip
Only the first letter of name must be indexed
Context: Index is not the solution for any performance issue, but well used, it’s really powerful!

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  
Task 9. Optimize search and score
mandatory
Write a SQL script that creates an index idx_name_first_score on the table names and the first letter of name and the score.

Requirements:

Import this table dump: names.sql.zip
Only the first letter of name AND score must be indexed
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Task 10. Safe divide
mandatory
Write a SQL script that creates a function SafeDiv that divides (and returns) the first by the second number or returns 0 if the second number is equal to 0.

Requirements:

You must create a function
The function SafeDiv takes 2 arguments:
a, INT
b, INT
And returns a / b or 0 if b == 0
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Task 11. No table for a meeting
mandatory
Write a SQL script that creates a view need_meeting that lists all students that have a score under 80 (strict) and no last_meeting or more than 1 month.

Requirements:

The view need_meeting should return all students name when:
They score are under (strict) to 80
AND no last_meeting date OR more than a month

