-- 1

SELECT first_name FROM restStaff INNER JOIN restBill ON restStaff.staff_no = restBill.waiter_no WHERE cust_name = "Tanya Singh";

-- 2

SELECT room_date FROM restRoom_management INNER JOIN restRest_table ON restRoom_management.room_name = restRest_table.room_name WHERE headwaiter = 010 AND restRest_table.room_name = "Green" AND restRoom_management.room_date LIKE "1602%";


-- 3

SELECT first_name, surname FROM restStaff WHERE headwaiter = 005;

-- 4

SELECT cust_name, bill_total, first_name FROM restBill, restStaff WHERE restBill.waiter_no = restStaff.staff_no ORDER BY bill_total DESC;

-- 5

SELECT first_name, surname FROM restStaff INNER JOIN restBill ON restBill.waiter_no = restStaff.staff_no WHERE restBill.bill_no = 00014 OR restBill.bill_no = 00017;

-- 6

SELECT first_name, surname FROM restStaff INNER JOIN restRoom_management ON restStaff.headwaiter = restRoom_management.headwaiter OR restStaff.staff_no = restRoom_management.headwaiter WHERE room_date = 160312 AND room_name = "BLue";
