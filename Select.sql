Microsoft Windows [Version 10.0.19045.2604]
(c) Microsoft Corporation. All rights reserved.

C:\Users\menad>mysql -u root -p
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 52
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbook        |
| addressbookservice |
| cricket            |
| empdb              |
| employeedb         |
| information_schema |
| ipl                |
| mysql              |
| payroll_service    |
| performance_schema |
+--------------------+
10 rows in set (0.00 sec)

mysql> create database University;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbook        |
| addressbookservice |
| cricket            |
| empdb              |
| employeedb         |
| information_schema |
| ipl                |
| mysql              |
| payroll_service    |
| performance_schema |
| university         |
+--------------------+
11 rows in set (0.00 sec)

mysql> use university;
Database changed
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbook        |
| addressbookservice |
| cricket            |
| empdb              |
| employeedb         |
| information_schema |
| ipl                |
| mysql              |
| payroll_service    |
| performance_schema |
| university         |
+--------------------+
11 rows in set (0.00 sec)

mysql> create table student (FirstName varchar(255), LastName varchar(255), DptName varchar(255), Subject varchar(255), StudentId varchar(255));
Query OK, 0 rows affected (0.06 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| FirstName | varchar(255) | YES  |     | NULL    |       |
| LastName  | varchar(255) | YES  |     | NULL    |       |
| DptName   | varchar(255) | YES  |     | NULL    |       |
| Subject   | varchar(255) | YES  |     | NULL    |       |
| StudentId | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO student (FirstName, LastName, DptName, Subject, StudentId) values ('Nadeem', 'Akhtar', 'ME', 'Thermodynamics', '101');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+-----------+----------+---------+----------------+-----------+
| FirstName | LastName | DptName | Subject        | StudentId |
+-----------+----------+---------+----------------+-----------+
| Nadeem    | Akhtar   | ME      | Thermodynamics | 101       |
+-----------+----------+---------+----------------+-----------+
1 row in set (0.00 sec)

mysql> INSERT INTO student (FirstName, LastName, DptName, Subject, StudentId) values ('Kunal', 'Kumar', 'Electronics', 'Mechanics', '102');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+-----------+----------+-------------+----------------+-----------+
| FirstName | LastName | DptName     | Subject        | StudentId |
+-----------+----------+-------------+----------------+-----------+
| Nadeem    | Akhtar   | ME          | Thermodynamics | 101       |
| Kunal     | Kumar    | Electronics | Mechanics      | 102       |
+-----------+----------+-------------+----------------+-----------+
2 rows in set (0.00 sec)

mysql> INSERT INTO student (FirstName, LastName, DptName, Subject, StudentId) values ('Imran', 'Ahmad', 'Civil', 'Maths', '103');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+-----------+----------+-------------+----------------+-----------+
| FirstName | LastName | DptName     | Subject        | StudentId |
+-----------+----------+-------------+----------------+-----------+
| Nadeem    | Akhtar   | ME          | Thermodynamics | 101       |
| Kunal     | Kumar    | Electronics | Mechanics      | 102       |
| Imran     | Ahmad    | Civil       | Maths          | 103       |
+-----------+----------+-------------+----------------+-----------+
3 rows in set (0.00 sec)

mysql> SELECT FirstName FROM student;
+-----------+
| FirstName |
+-----------+
| Nadeem    |
| Kunal     |
| Imran     |
+-----------+
3 rows in set (0.00 sec)

mysql> select LastName from student;
+----------+
| LastName |
+----------+
| Akhtar   |
| Kumar    |
| Ahmad    |
+----------+
3 rows in set (0.00 sec)

mysql> select DptName from student;
+-------------+
| DptName     |
+-------------+
| ME          |
| Electronics |
| Civil       |
+-------------+
3 rows in set (0.00 sec)

mysql> select FirstName, LastName from student;
+-----------+----------+
| FirstName | LastName |
+-----------+----------+
| Nadeem    | Akhtar   |
| Kunal     | Kumar    |
| Imran     | Ahmad    |
+-----------+----------+
3 rows in set (0.00 sec)

mysql> select FirstName, LastName, DptName from student;
+-----------+----------+-------------+
| FirstName | LastName | DptName     |
+-----------+----------+-------------+
| Nadeem    | Akhtar   | ME          |
| Kunal     | Kumar    | Electronics |
| Imran     | Ahmad    | Civil       |
+-----------+----------+-------------+
3 rows in set (0.00 sec)

mysql>