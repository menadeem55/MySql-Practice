Microsoft Windows [Version 10.0.19045.2604]
(c) Microsoft Corporation. All rights reserved.

C:\Users\menad>mysql -u root -p
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 46
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
| football           |
| hospital           |
| information_schema |
| mysql              |
| payroll_service    |
| performance_schema |
| sys                |
+--------------------+
12 rows in set (0.00 sec)

mysql> create database ipl;
Query OK, 1 row affected (0.01 sec)

mysql> use ipl;
Database changed
mysql> show ipl;
mysql> create table players (Id int NOT NULL, FirstName varchar(20) NOT NULL, Age int NOT NULL, Address char(255));
Query OK, 0 rows affected (0.03 sec)

mysql> desc players;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Id        | int         | NO   |     | NULL    |       |
| FirstName | varchar(20) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | char(255)   | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into players (Id, FirstName, Age, Address)values('1001', 'nadeem', '26', 'bihar');
Query OK, 1 row affected (0.01 sec)

mysql> desc players;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Id        | int         | NO   |     | NULL    |       |
| FirstName | varchar(20) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | char(255)   | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from players;
+------+-----------+-----+---------+
| Id   | FirstName | Age | Address |
+------+-----------+-----+---------+
| 1001 | nadeem    |  26 | bihar   |
+------+-----------+-----+---------+
1 row in set (0.00 sec)

mysql> insert into players (Id, FirstName, Age, Address)values('1001', 'jack', '27', 'delhi');
Query OK, 1 row affected (0.00 sec)

mysql> select * from players;
+------+-----------+-----+---------+
| Id   | FirstName | Age | Address |
+------+-----------+-----+---------+
| 1001 | nadeem    |  26 | bihar   |
| 1001 | jack      |  27 | delhi   |
+------+-----------+-----+---------+
2 rows in set (0.00 sec)

mysql>