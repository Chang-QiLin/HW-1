-- 1

SELECT waiter_no FROM restBill GROUP BY waiter_no HAVING COUNT(*) > 2; 

-- 2


SELECT room_name, COUNT(*) FROM restRest_table WHERE no_of_seats > 6 GROUP BY room_name;

-- 3

SELECT room_name, COUNT(*), SUM(bill_total) FROM restBill INNER JOIN restRest_table ON restRest_table.table_no = restBill.table_no GROUP BY room_name;

-- 4

SELECT headwaiter, SUM(bill_total) FROM restBill INNER JOIN restStaff ON restStaff.staff_no = restBill.waiter_no GROUP BY headwaiter;

-- 5

SELECT cust_name, AVG(bill_total) FROM restBill GROUP BY cust_name HAVING AVG(bill_total) > 400;

-- 6

SELECT first_name, surname, bill_date, COUNT(*) FROM restBill INNER JOIN restStaff ON restBill.waiter_no = restStaff.staff_no GROUP BY bill_date, waiter_no HAVING COUNT(*) > 2;



