Use Rajewski
Go
CREATE PROCEDURE WorkerSchema.InsertClient
	@License_number		varchar(30)		Null,
	@Insurance_number	varchar(30)		Null,
	@Name				varchar(20)		Null,
	@Surname			varchar(30)		Null,
	@Birth_date			date			Null,
	@AdressID		 	int				Null

AS 
BEGIN
	INSERT INTO WorkerSchema.Client
		(
		License_number,	
		Insurance_number,
		Name,			
		Surname,		
		Birth_date,		
		AdressID		 
		)
	VALUES
	(
	@License_number,	
	@Insurance_number,
	@Name,			
	@Surname,		
	@Birth_date,	
	@AdressID	 
	)
END
GO

exec WorkerSchema.InsertClient
	@License_number = '54353435',	
	@Insurance_number = '2134252',
	@Name = 'Gra¿yna',			
	@Surname = 'Kubek',		
	@Birth_date = '1994-04-12',	
	@AdressID = 11
go
exec WorkerSchema.InsertClient
	@License_number = '24242245',	
	@Insurance_number = '24234235',
	@Name = 'Filip',			
	@Surname = 'Monitor',		
	@Birth_date = '1993-03-16',	
	@AdressID = 12
go
exec WorkerSchema.InsertClient
	@License_number = '2142362',	
	@Insurance_number = '242523554',
	@Name = 'Tomasz',			
	@Surname = 'Prawica',		
	@Birth_date = '1986-04-26',	
	@AdressID = 13
go

execute as user = 'Admin'
exec WorkerSchema.InsertClient
	@License_number = '838349',	
	@Insurance_number = '485734853',
	@Name = 'Kamil',			
	@Surname = 'M³ot',		
	@Birth_date = '1966-11-22',	
	@AdressID = 14
go

execute as user = 'Staff'
exec WorkerSchema.InsertClient
	@License_number = '2532632',	
	@Insurance_number = '7425262345',
	@Name = 'Lucjan',			
	@Surname = 'Kot',		
	@Birth_date = '1956-12-25',	
	@AdressID = 21
go