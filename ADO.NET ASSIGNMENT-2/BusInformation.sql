create table BusInformation (
BusID int Primary Key,
BoardingPoint nvarchar(50),
TravelDate datetime,
Amount decimal(10,2),
Rating int
)

-- Altering Column
Alter table BusInformation
add DroppingPoint nvarchar(50)

-- Creating Procedure to Insert data
CREATE PROCEDURE InsertData_BusInformation (
	@BusID int,
	@BoardingPoint nvarchar(50), 
	@TravelDate datetime, 
	@Amount decimal(10,2), 
	@Rating int,
	@DroppingPoint nvarchar(50)
	)
as 
Begin 
  Insert into BusInformation values (@BusID, @BoardingPoint, @TravelDate, @Amount, @Rating, @DroppingPoint )
End

exec InsertData_BusInformation
1,	'BGL',	'20170618',	400.65,	2, 'PUN'

exec InsertData_BusInformation
2,	'HYD',	'20171005',	600.00,	3, 'BGL'

exec InsertData_BusInformation
3,	'CHN',	'20160725',	445.95,	3, 'HYD'

exec InsertData_BusInformation
4,	'PUN',	'20171210',	543.00,	4, 'CHN'

exec InsertData_BusInformation
5,	'MUM',	'20170128',	500.50,	4, 'HYD'

exec InsertData_BusInformation
6,	'PUN',	'20160327',	333.55,	3, 'LKO'

exec InsertData_BusInformation
7,	'MUM',	'20161106',	510.00,	4, 'CHN'


SELECT * FROM BusInformation




