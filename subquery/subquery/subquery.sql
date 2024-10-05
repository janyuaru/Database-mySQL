use subquery;
show tables;
show databases;
select * from orderdetail;
select * from custtbl;
select * from emptbl;
select * from ordertbl;
select * from prodtbl;

#1
SELECT orderNo, AVG(orderQty * prodPrice) AS average_payment
FROM orderdetail
JOIN prodtbl ON orderdetail.prodNo = prodtbl.prodNo
GROUP BY orderNo;

#2
SELECT c.custName,avg(od.orderQty * p.prodPrice) AS total_payment
FROM custtbl c
JOIN ordertbl o ON c.custNo = o.custNo
JOIN orderdetail od ON o.orderNo = od.orderNo
JOIN prodtbl p ON od.prodNo = p.prodNo
GROUP BY c.custNo, o.orderNo
HAVING SUM(od.orderQty * p.prodPrice) > (
    SELECT AVG(sub_total)
    FROM (
        SELECT SUM(od2.orderQty * p2.prodPrice) AS sub_total
        FROM orderdetail od2
        JOIN prodtbl p2 ON od2.prodNo = p2.prodNo
        GROUP BY od2.orderNo
    ) AS avg_table
);

