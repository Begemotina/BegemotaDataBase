 /*
   1. ���������� ���� MySQL. �������� � �������� ���������� ���� .my.cnf, 
 	����� � ��� ����� � ������, ������� ���������� ��� ���������.

� ����� � ����� ����������, ��� � ����� ���� ���� ������ ���������� .my.cnf, ��
 ��� �� ���, �� ������ ���� ���c�� my.cnf 

��� ����� ������� �� ���������� ������, ��� � �� ����� ����� -u root -p
��� ������ �����������

C:\Program Files\MySQL\MySQL Server 8.0\bin> mysql.exe
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 37
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>

*/
 
 /*
  2. �������� ���� ������ example, ���������� � ��� ������� users, 
  ��������� �� ���� ��������, ��������� id � ���������� name.
 */
 
drop database if exists example; 
create database example;
use example;

drop table if exists users;
create table users (
	id INT auto_increment not null primary key,
	name VARCHAR(100) not null
);

/*
 3. �������� ���� ���� ������ example �� ����������� �������,
 ���������� ���������� ����� � ����� ���� ������ sample.
 */

/*
-- ������ ���� ���� ������
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump.exe example > example.sql

-- ������� ���������� sample 
mysql> create database sample

-- ������������� � ���� ������ sample ���� example.sql

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql.exe sample < example.sql

-- ��������� � ������� ���� ����������
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql sample

mysql> show tables;
+------------------+
| Tables_in_sample |
+------------------+
| users            |
+------------------+
1 row in set (0.00 sec)

*/

/*
4
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump.exe mysql help_keyword --where="true limit 100" > help_keyword.sql
*/