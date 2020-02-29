CREATE PROCEDURE WorkerSchema.InsertOrder
	@Return_date			datetime NULL,
	@Receipt_date			datetime NULL,
	@Order_date				datetime NULL,
	@WorkerID				int		 Null,
	@ClientID				int		 Null,
	@Registration_number	char(7)  Null
AS 
BEGIN
	INSERT INTO WorkerSchema.Orders
		(
		Return_date,		
		Receipt_date,		
		Order_date,			
		WorkerID,			
		ClientID,			
		Registration_number
		)
	VALUES
	(
	@Return_date,		
	@Receipt_date,		
	@Order_date,			
	@WorkerID,			
	@ClientID,			
	@Registration_number	
	)
END
GO
execute as user='Staff'
exec WorkerSchema.InsertOrder
	@Return_date = '2019-10-29 14:00:00',		
	@Receipt_date = '2019-10-20 12:00:00',		
	@Order_date = '2019-10-18 11:00:00',			
	@WorkerID = 3,			
	@ClientID = 4,			
	@Registration_number = 'TSZ2346'
go
exec WorkerSchema.InsertOrder
	@Return_date = '2019-11-29 14:00:00',		
	@Receipt_date = '2019-11-20 12:00:00',		
	@Order_date = '2019-11-18 16:00:00',			
	@WorkerID = 5,			
	@ClientID = 2,			
	@Registration_number = 'SI23864'
go
exec WorkerSchema.InsertOrder
	@Return_date = '2019-12-27 17:00:00',		
	@Receipt_date = '2019-12-22 12:00:00',		
	@Order_date = '2019-12-19 08:00:00',			
	@WorkerID = 3,			
	@ClientID = 3,			
	@Registration_number = 'WWA2346'
go
