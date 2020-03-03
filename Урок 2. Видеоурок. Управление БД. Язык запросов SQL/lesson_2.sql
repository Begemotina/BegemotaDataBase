 /*
   1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, 
 	задав в нем логин и пароль, который указывался при установке.

в видео к уроку говориться, что в винде файл тоже должен называться .my.cnf, но
 это не так, он должен быть проcто my.cnf 

Вот текст который из команднной строки, что я не ввожу ключи -u root -p
оно просто запускается

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
  2. Создайте базу данных example, разместите в ней таблицу users, 
  состоящую из двух столбцов, числового id и строкового name.
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
 3. Создайте дамп базы данных example из предыдущего задания,
 разверните содержимое дампа в новую базу данных sample.
 */

/*
-- делаем дамп базы данных
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump.exe example > example.sql

-- создаем базуданных sample 
mysql> create database sample

-- разварачиваем в базу данных sample файл example.sql

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql.exe sample < example.sql

-- запускаем и смотрим чего получилось
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