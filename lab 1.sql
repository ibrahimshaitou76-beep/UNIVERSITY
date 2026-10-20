create database shopping_cart_fall2026_a
go
use shopping_cart_fall2026_a
go 
create table client(
	Num int primary key, 
	Name nvarchar(50) not null, 
	Address varchar(50), 
	Phone char(9) not null 
		check(phone like'[0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9]')
)

create table Item(
	ID int primary key, 
	Name varchar(100) unique not null, 
	PurchasePrice decimal(10, 2) not null
			check(PurchasePrice > 5), 
	SalePrice decimal(10, 2) check(SalePrice > 5) not null, 
	QuantityStock int,
	--primary key(ID)
	check(SalePrice >= PurchasePrice),
	check(QuantityStock >= 0)
) 
create table Invoice(
	Num int primary key identity(1, 1), 
	InvoiceDate date default getdate() 
				check(InvoiceDate <= getdate()), 
	ClientNum int references Clients(Num) 
						on delete cascade
) 

create table DetailInvoice(
	ItemID int references Items, 
	InvoiceNum int references Invoices on delete cascade, 
	Quantity int check(Quantity > 0), 
	InvoicedPrice decimal(10, 2) check(InvoicedPrice >0),
	primary key(ItemID, InvoiceNum)
) 
create table FeaturedItem(
	ItemID int references Items primary key, 
	FeatureText varchar(10) 
		check(FeatureText in('Discount', 'Offer')), 
	FeaturePrice decimal(10, 2)
) 

insert into clients values 
	(333, 'Bob Jonson', 'Vience', '03-333333'),
	(455, 'Jack Brown', null, '01-111222' ),
	(656, 'Mary Smith', 'Los Angeles', '03-123456'),
	(765, 'Kelly Bay', 'Oxford', '03-123123'),
	(234, 'Al Malak', 'Los Angeles', '07-777000')
go
select * from clients,

alter table Clients
add Salary varchar(20)


alter table clients
alter column Salary decimal(10, 2)

alter table clients
add constraint chk_salary check(Salary >= 100)


alter table clients
drop constraint chk_salary 
alter table clients
add constraint chk_salary check(Salary >= 1000)


 alter table clients
 drop column Salary


delete from clients where num = 222


update items
set SalePrice = 1.1 * SalePrice
 

update items
set SalePrice = 1.1 * SalePrice


insert into clients values
	(333, 'Bob Jonson', 'Vience', '03-333333'),
	(455, 'Jack Brown', null, '01-111222' ),
	(656, 'Mary Smith', 'Los Angeles', '03-123456'),
	(765, 'Kelly Bay', 'Oxford', '03-123123'),
	(234, 'Al Malak', 'Los Angeles', '07-777000')
go
select * from clients
ORDER BY NAME DESC ,ADDRESS
SELECT * FROM INVOICES 
WHERE CLIENTNUM=455
SELECT NAME 
FROM CLIENTS 
WHERE NAME LIKE 'M__A%'
SELECT * FROM CLIENTS
WHERE NAME LIKE 'M%H'
SELECT FROM INVOICES 
WHERE CLIENTNUM =333 AND INVOICEDATE>'2014-01-30'
SELECT * FROM INVOICES 
WHERE INVOICEDATE>='2014-01-01'AND INVOICEDATE'2014-12-31'
ORR WHERE DATEPART (YYYY, INVOICEDATE)=2014
SELECT DISTINCT ADDRESS 
FROM CLIENTS 
SELECT * FROM ITEMS 
WHERE SALEPRICE>=30 AND SALEPRICE <=75
SELECT * FROM CLIENTS 
WHERE ADDRESS = 'OXFORD'OR ADDRESS= 'LOS ANGELOS'
--ORR WHERE ADDRESS IN('OXFORD' , 'LOSANGELOS')
-- lab 4
select TOP 2 *  from Item
ORDER BY SALEPRICE DESC
select invoicenum from detailinvoices , count(itemid)
purshased items 
select invoicenum ,









