USE dbtiketkeretaku;
SHOW TABLES;
SELECT * FROM customer;

DELETE FROM customer;

INSERT INTO customer(name,phoneNumber,email,address) VALUES
('Salamah Nur Aqidah','082112369475','salamah@gmail.com','Jalan Melati No 3, Jakarta Barat'),
('Afifah Nafis','08156746527819','afifah14@gmail.com','jl.seruling, Bekasi'),
('Azizah Emma','081267546798','azizah45@gmail.com','jl.pangandaran, Pangandaran'),
('Lestari','088987675432','lestari32@gmail.com','jl.sukabumi, Bekasi'),
('Citra Puspita','085643547689','citra03@gmail.com','jl.gamelan, Jakarta Selatan');

DESC customer;

INSERT INTO customer(name,phoneNumber,email,address) VALUES
('Budi','08134536782','budi65@gmail.com','Jakarta Pusat'),
('Ani','08574365782','ani76@gmail.com','Palembang'),
('Caca','0832876954','caca12@gmail.com','Sukabumi'),
('Dodi','08657854652','dodi37@gmail.com','Padang'),
('Siti','08787665985','siti56@gmail.com','Bali');
SELECT * FROM customer;

select * from `order`;
desc `order`;
insert into `order` (customer_idcustomer,dateOrder,departure,dateDeparture,arrival,dateArrival,amountPassenger) values
('20','2020-01-01 19:05:00','Jakarta','2020-01-08 20:05:00','Surabaya','2020-01-09 09:05:00','2' );

insert into `order` (customer_idcustomer,dateOrder,departure,dateDeparture,arrival,dateArrival,amountPassenger) values
('21','2020-02-02 20:15:00','Bekasi','2020-02-20 08:20:00','Bandung','2020-02-09 13:05:00','4' ),
('22','2020-03-13 10:15:00','Senen','2020-03-15 06:30:00','Yogyakarta','2020-03-15 21:10:00','3' ),
('23','2020-02-12 18:30:00','Sidareja','2020-02-14 07:20:00','Kebumen','2020-02-14 13:05:00','2' ),
('24','2020-01-03 08:10:00','Banjar','2020-01-05 09:00:00','Balapan','2020-01-05 18:50:00','1' );

insert into `order` (customer_idcustomer,dateOrder,departure,dateDeparture,arrival,dateArrival,amountPassenger) values
('26','2020-03-05 09:45:00','Gandrungmangu','2020-03-12 11:45:00','Ngawi','2020-03-12 20:50:00','2' ),
('27','2020-03-02 20:35:00','Gambir','2020-03-07 12:51:00','Cilacap','2020-03-07 18:45:00','2' ),
('28','2020-03-05 09:15:00','Kutajaya','2020-03-10 08:20:00','Semarang','2020-03-10 13:05:00','1' ),
('29','2020-03-14 10:15:00','Bandung','2020-03-16 09:20:00','Bekasi','2020-03-16 13:05:00','4' );


desc payment;
insert into payment(total,method) values
(250000,'transfer');

insert into payment(total,method) values
(350000,'transfer'),
(350000,'virtual account'),
(500000,'transfer'),
(450000,'virtual account'),
(750000,'transfer'),
(550000,'virtual account'),
(200000,'transfer'),
(320000,'virtual account'),
(250000,'transfer');

select * from payment;

desc transfer;

select*from transfer;
insert into transfer(payment_idpayment,noRekening) values
('1','1234567891');

insert into transfer(payment_idpayment,noRekening) values
('2','2345679123'),
('4','2345679142'),
('6','2343479123'),
('8','2345674123'),
('10','1345679123');

select*from virtualaccount;

desc virtualaccount;

insert into virtualaccount(payment_idpayment,number) values
('3','2334679123');

insert into virtualaccount(payment_idpayment,number) values
('5',345679173);

insert into virtualaccount(payment_idpayment,number) values
('7',234537123);

insert into virtualaccount(payment_idpayment,number) values
('10',654798123);

select*from checkout;

desc checkout;

insert into checkout(payment_idpayment,order_idorder,codeBooking) values
('1','6','001asd');

insert into checkout(payment_idpayment,order_idorder,codeBooking) values
('2','7','002asdw'),
('3','8','003asde'),
('4','9','004asdr'),
('5','10','005asdt'),
('6','11','006asdy'),
('7','12','007asdu'),
('8','13','008asdi'),
('9','14','009asdo'),
('10','15','0010asdp');

select  *FROM `order`;
select*FROM payment;

select  method, count(method) as jml from payment group by method;

SELECT `order`.dateOrder,`order`.departure,`order`.dateDeparture,`order`.arrival,`order`.dateArrival, payment.method,payment.total,checkout.codeBooking
From checkout
INNER JOIN `order` ON order.idorder = checkout.order_idorder
INNER JOIN payment ON payment.idpayment = checkout.payment_idpayment;
