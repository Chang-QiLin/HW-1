-- 1

SELECT cust_name FROM restBill WHERE waiter_no IN (SELECT staff_no FROM restStaff WHERE headwaiter = 010) AND bill_total > 450;

-- 2

SELECT first_name, surname FROM restStaff WHERE staff_no IN (SELECT headwaiter FROM restStaff WHERE staff_no IN (SELECT waiter_no FROM restBill WHERE bill_date = 160111 AND cust_name LIKE "Nerida%"));

-- 3

SELECT cust_name FROM restBill WHERE bill_total < 200 ORDER BY bill_total;

-- 4

SELECT staff_no FROM restStaff WHERE staff_no NOT IN (SELECT waiter_no FROM restBill);

-- 5

-- idk

