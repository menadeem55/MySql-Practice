Microsoft Windows [Version 10.0.19045.2604]
(c) Microsoft Corporation. All rights reserved.

C:\Users\menad>mysql -u root -p
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 54
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
| university         |
+--------------------+
11 rows in set (0.00 sec)

mysql> use addressbook;
Database changed
mysql> desc addressbook;
ERROR 1146 (42S02): Table 'addressbook.addressbook' doesn't exist
mysql> show tables;
+-----------------------+
| Tables_in_addressbook |
+-----------------------+
| addressbook_table     |
+-----------------------+
1 row in set (0.00 sec)

mysql> desc addressbook_table;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| FirstName   | varchar(30)  | NO   |     | NULL    |       |
| LastName    | varchar(30)  | NO   |     | NULL    |       |
| Address     | varchar(150) | YES  |     | NULL    |       |
| city        | varchar(30)  | YES  |     | NULL    |       |
| State       | varchar(30)  | YES  |     | NULL    |       |
| Zip         | int          | YES  |     | NULL    |       |
| PhoneNumber | int          | YES  |     | NULL    |       |
| Email       | varchar(100) | YES  |     | NULL    |       |
| Relation    | varchar(200) | YES  |     | NULL    |       |
| Type        | varchar(200) | YES  |     | NULL    |       |
| dateadded   | varchar(200) | YES  |     | NULL    |       |
| bookNamed   | varchar(200) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
12 rows in set (0.00 sec)

mysql> select * from addressbook_table;
+-----------+----------+-----------------+--------+-----------+--------+-------------+-----------------------+------------+---------+------------+-----------+
| FirstName | LastName | Address         | city   | State     | Zip    | PhoneNumber | Email                 | Relation   | Type    | dateadded  | bookNamed |
+-----------+----------+-----------------+--------+-----------+--------+-------------+-----------------------+------------+---------+------------+-----------+
| aman      | kumar    | sector11,       | delhi, | newDelhi, | 100001 |    99991236 | aman.kumar@gmail.com  | BRIDGELABZ | friend  | 2017-09-04 | BOOKNAME1 |
| john      | brut     | sector11,       | delhi, | newDelhi, | 100001 |    26677236 | john.b@gmail.com      | OFFICE     | friend  | 2019-07-08 | BOOKNAME2 |
| Nadeem    | Akhtar   | sector11,       | patna  | newDelhi, | 100001 |    78965412 | me.nadeem55@gmail.com | FAMILY     | brother | 2018-05-06 | BOOKNAME3 |
| Usha      | Ahirwar  | 547 lake view   | bhopal | MP        |   8005 |     1238745 | usha.ah@gmail.com     | friend     | fri     | 2023-03-05 | abc       |
| Amit      | Agrwal   | 547 lake view   | bhopal | MP        |   8005 |     1238745 | amit.agg@gmail.com    | friend     | fri     | 2023-03-05 | abc       |
| Shiwani   | pauli    | 154 street road | nagpur | MH        | 814587 |      784545 | shiv.pu@gmail.com     | friend     | fri     | 2023-03-07 | xyz       |
| Shiwani   | pauli    | 154 street road | nagpur | MH        | 814587 |      784545 | shiv.pu@gmail.com     | friend     | fri     | 2023-03-07 | xyz       |
+-----------+----------+-----------------+--------+-----------+--------+-------------+-----------------------+------------+---------+------------+-----------+
7 rows in set (0.00 sec)

mysql> select city from addressbook_table where city = 'delhi,';
+--------+
| city   |
+--------+
| delhi, |
| delhi, |
+--------+
2 rows in set (0.00 sec)

mysql> select * from addressbook_table where city = 'delhi,';
+-----------+----------+-----------+--------+-----------+--------+-------------+----------------------+------------+--------+------------+-----------+
| FirstName | LastName | Address   | city   | State     | Zip    | PhoneNumber | Email                | Relation   | Type   | dateadded  | bookNamed |
+-----------+----------+-----------+--------+-----------+--------+-------------+----------------------+------------+--------+------------+-----------+
| aman      | kumar    | sector11, | delhi, | newDelhi, | 100001 |    99991236 | aman.kumar@gmail.com | BRIDGELABZ | friend | 2017-09-04 | BOOKNAME1 |
| john      | brut     | sector11, | delhi, | newDelhi, | 100001 |    26677236 | john.b@gmail.com     | OFFICE     | friend | 2019-07-08 | BOOKNAME2 |
+-----------+----------+-----------+--------+-----------+--------+-------------+----------------------+------------+--------+------------+-----------+
2 rows in set (0.00 sec)

mysql> select FirstName, LastName, Email from addressbook_table where Address = 'Patna';
Empty set (0.00 sec)

mysql> select FirstName, LastName, Email from addressbook_table where Address = 'sector11,';
+-----------+----------+-----------------------+
| FirstName | LastName | Email                 |
+-----------+----------+-----------------------+
| aman      | kumar    | aman.kumar@gmail.com  |
| john      | brut     | john.b@gmail.com      |
| Nadeem    | Akhtar   | me.nadeem55@gmail.com |
+-----------+----------+-----------------------+
3 rows in set (0.00 sec)

mysql> select FirstName, LastName, Email from addressbook_table where Address = '547 lake view';
+-----------+----------+--------------------+
| FirstName | LastName | Email              |
+-----------+----------+--------------------+
| Usha      | Ahirwar  | usha.ah@gmail.com  |
| Amit      | Agrwal   | amit.agg@gmail.com |
+-----------+----------+--------------------+
2 rows in set (0.00 sec)

mysql>