create database TH01
use TH01
go
create table Product(
	code nvarchar(10) NOT NULL,
	description nvarchar(max) NULL,
	price money,
)
insert Product(code,description,price) values (N'8601',N'86 (the band) - True Life Songs and Pictures',CAST(14.95 as float))
insert Product(code,description,price) values (N'pf01',N'Paddlefoot - The first CD',CAST(12.95 as float))
insert Product(code,description,price) values (N'pf02',N'Paddlefoot - The second CD',CAST(14.95 as float))
insert Product(code,description,price) values (N'jr01',N'Joe Rut - Genwine Wood Grained Finish',CAST(14.95 as float))