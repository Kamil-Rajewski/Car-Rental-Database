CREATE PROCEDURE AdminSchema.InsertWorker
	@Name			varchar(20)				Null,
	@Surname		varchar(30)				Null,
	@ShowroomID		int						Null,
	@AdressID		int						Null
AS 
BEGIN
	INSERT INTO AdminSchema.Worker
		(
		Name,
		Surname,	
		ShowroomID,	
		AdressID
		)
	VALUES
	(
	@Name,		
	@Surname,	
	@ShowroomID,
	@AdressID	
	)
END
GO

exec AdminSchema.InsertWorker
	@Name = 'Koko',
	@Surname = 	'Lasek',
	@ShowroomID = 3,
	@AdressID = 11
go
exec AdminSchema.InsertWorker
	@Name = 'Tadeusz',
	@Surname = 	'Las',
	@ShowroomID = 4,
	@AdressID = 12
go
exec AdminSchema.InsertWorker
	@Name = 'Brian',
	@Surname = 	'P³ot',
	@ShowroomID = 5,
	@AdressID = 13
exec AdminSchema.InsertWorker
	@Name = 'Jakub',
	@Surname = 	'Czajnik',
	@ShowroomID = 5,
	@AdressID = 14
exec AdminSchema.InsertWorker
	@Name = 'Pelagia',
	@Surname = 	'Kontakt',
	@ShowroomID = 5,
	@AdressID = 15
exec AdminSchema.InsertWorker
	@Name = 'Ireneusz',
	@Surname = 	'Okap',
	@ShowroomID = 5,
	@AdressID = 16

execute as user = 'Staff'
exec AdminSchema.InsertWorker
	@Name = 'Rados³aw',
	@Surname = 	'Kabel',
	@ShowroomID = 8,
	@AdressID = 21