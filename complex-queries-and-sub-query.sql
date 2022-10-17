
1.	--Inner Join
--It compares 2 tables rows to see if any of them fit the condition specified in the ‘ON’ clause.

 
mysql> Select Tickets.price, tickets.ticket_id,movies.movie_name, movies.genre
    -> from tickets
    -> Inner join Movies on
    -> Tickets.ticket_id = Movies.movie_id;
--+-------+-----------+------------+-----------+
--| price | ticket_id | movie_name | genre     |
--+-------+-----------+------------+-----------+
--| $15   |         1 | Avengers   | Sci-fi    |
--| $15   |         2 | Oceans 8   | Action    |
--| $10   |         3 | Top Gun    | Action    |
--| $10   |         4 | Minions    | Animation |
--| $15   |         5 | Me Time    | Comedy    |
----+-------+-----------+------------+-----------+
-- 5 rows in set (4.56 sec)

--2.	Having syntax
--The results can be filtered by conditions you set to determine which group results are displayed. 
mysql> Select count(employee_id), employee_name
    -> from employees
    -> having count(employee_id) > 4;
--+--------------------+---------------+
--| count(employee_id) | employee_name |
--+--------------------+---------------+
--|                  5 | Mark Mill     |
--+--------------------+---------------+
-- row in set (1.76 sec)

--3.	When , Then, Else (Case expression)
--It evaluates each condition in turn before stopping at the first one that is satisfied.
 mysql> select seat_id, row_no,
    -> case when row_no > 10 then 'the row number is greater than 10'
    -> when row_no = 10 then 'the row number is equal to 10'
    -> else 'the row number is under 10'
    -> end as RowDesc
    -> from seats;
--+---------+--------+-----------------------------------+
--| seat_id | row_no | RowDesc                           |
--+---------+--------+-----------------------------------+
--|       1 | 8      | the row number is under 10        |
--|       2 | 12     | the row number is greater than 10 |
--|       3 | 20     | the row number is greater than 10 |
--|       4 | 2      | the row number is under 10        |
--|       5 | 6      | the row number is under 10        |
--+---------+--------+-----------------------------------+
--5 rows in set (4.75 sec)

--4.	‘%’ wildcard
--When changing one or more characters in a string, a wildcard character is utilized.

--It is often used with the ‘LIKE’ operator, 
 
mysql> select *from employees
    -> where address like 'man%';
--+-------------+-----------------+------------------+------------+-----------+
--| employee_id | employee_name   | email            | phone_no   | address   |
--+-------------+-----------------+------------------+------------+-----------+
--|           3 | Corantina Demic | 1coran@gmail.com | 1354456789 | Manhatten |
--+-------------+-----------------+------------------+------------+-----------+
--1 row in set (0.47 sec)

--5.	Exists
--is employed to check whether any record in a subquery exists. If the subquery produces one or more records, the ‘EXISTS’ operator returns TRUE.
 
mysql> select theatre_name
    -> from theatre
    -> where exists (select price from tickets
    -> where tickets.theatre_id = theatre.theatre_id and schedule_id > 2);
--+--------------+
--| theatre_name |
--+--------------+
--| theatre 2    |
--| theatre 3    |
--| theatre 5    |
--+--------------+
--3 rows in set (0.54 sec)

--6.	Limit
--It is used to determine how many records to return, use the LIMIT clause. 
mysql> select *from payments
    -> where payment_desc = 'Cash'
    -> limit 2;
--+------------+-------------+------------+--------------+
--| payment_id | customer_id | date       | payment_desc |
--+------------+-------------+------------+--------------+
--|          1 |           1 | 2022-08-15 | Cash         |
--|          4 |           4 | 2022-07-15 | Cash         |
--+------------+-------------+------------+--------------+
--2 rows in set (0.63 sec)

--7.	Left join
--links two tables and retrieves data based on a condition that matches in both tables. 
 
mysql> select theatre.location, seats.seat_id
    -> from theatre
    -> left join seats on
    -> theatre.theatre_id =
    -> seats.theatre_id
    -> order by theatre.location;
--+------------+---------+
--| location   | seat_id |
--+------------+---------+
--| East Wing  |       2 |
--| North Wing |       3 |
--| south Wing |       4 |
--| Up stairs  |       5 |
--| West Wing  |       1 |
--+------------+---------+
--5 rows in set (1.09 sec)




--8.	Count 
--enables you to count both rows and just the rows that match a certain condition.
 mysql> select date_format (reservation.reservation _date, '%y-%m-%d") as day_reserved
﻿> count (distinct reservation.reservation_id) as amount_reserved
﻿› from reservation;
--+-----+--------------------------+
--| day_reserved | amount_reserved |
--+-----+--------------------------+
--|  22-08-10    |               5 | 
--+-----+--------------------------+




--9.	Avg, , Sum
--When a table field is selected,‘SUM’,returns the total of all the values in the chosen column
--‘ AVG’ computes the average of the values in a given column.
mysql> select customers.age,
    -> avg(10) as avg_amount,
    -> sum(10) as total
    -> from customers;
--+-----+------------+-------+
--| age | avg_amount | total |
--+-----+------------+-------+
--|  25 |    10.0000 |    70 |
--+-----+------------+-------+
--1 row in set (1.23 sec)

 







--10.	Min, Max
--In contrast to the ‘MIN’ function, there is the MAX function,the greatest value from the selected table field is returned.
 
mysql> select payment_id,
    -> min(2) as Minimum,
    -> max(4) as Maximum
    -> from payments
    -> group by payments.date;
--+------------+---------+---------+
--| payment_id | Minimum | Maximum |
--+------------+---------+---------+
--|          4 |       2 |       4 |
--|          3 |       2 |       4 |
--|          1 |       2 |       4 |
--|          2 |       2 |       4 |
--|          5 |       2 |       4 |
--+------------+---------+---------+
5 rows in set (7.29 sec)
