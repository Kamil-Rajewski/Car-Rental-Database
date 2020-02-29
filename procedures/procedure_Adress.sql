USE Rajewski
Go

CREATE PROCEDURE WorkerSchema.InsertAdress
	@City							varchar(25) = NULL,
	@Postal_code					char(5) = NULL,
	@Street_number					varchar(8) = NULL,
	@Phone							varchar(20) = NULL
AS 
BEGIN
	INSERT INTO WorkerSchema.Adress
		(
		City,
		Postal_code,
		Street_number,
		Phone			
		)
	VALUES
	(
	@City,			
	@Postal_code,	
	@Street_number,	
	@Phone			
	)
END
GO

exec WorkerSchema.InsertAdress
	@City = '£ódŸ',			
	@Postal_code = '42056',	
	@Street_number = 24,	
	@Phone = '940294948'
go
exec WorkerSchema.InsertAdress
	@City = 'Szczecin',			
	@Postal_code = '93842',	
	@Street_number = 923,	
	@Phone = '7493019483'
go
exec WorkerSchema.InsertAdress
	@City = 'Wroc³aw',			
	@Postal_code = '57291',	
	@Street_number = 94,	
	@Phone = '9485920123'
go
exec WorkerSchema.InsertAdress
	@City = 'Lublin',			
	@Postal_code = '12373',	
	@Street_number = 82,	
	@Phone = '9573033381'
go
exec WorkerSchema.InsertAdress
	@City = 'Tarnobrzeg',			
	@Postal_code = '74001',	
	@Street_number = 18,	
	@Phone = '830438492'
go
exec WorkerSchema.InsertAdress
	@City = 'Kazimierz Dolny',			
	@Postal_code = '74002',	
	@Street_number = 11,	
	@Phone = '555838390'
go
exec WorkerSchema.InsertAdress
	@City = 'Cisna',			
	@Postal_code = '73319',	
	@Street_number = 77,	
	@Phone = '7772930120'
go
exec WorkerSchema.InsertAdress
	@City = 'Zakopane',			
	@Postal_code = '83482',	
	@Street_number = 65,	
	@Phone = '9923940394'
go

exec WorkerSchema.InsertAdress
	@City = 'Koszalin',			
	@Postal_code = '59204',	
	@Street_number = 34,	
	@Phone = '934050456'
go
exec WorkerSchema.InsertAdress
	@City = 'Trzebiatów',			
	@Postal_code = '29409',	
	@Street_number = 6,	
	@Phone = '930950246'
go
exec WorkerSchema.InsertAdress
	@City = 'Siedlce',			
	@Postal_code = '49245',	
	@Street_number = 85,	
	@Phone = '945026030'
go
exec WorkerSchema.InsertAdress
	@City = 'Raków',			
	@Postal_code = '38194',	
	@Street_number = 34,	
	@Phone = '904055263'
go