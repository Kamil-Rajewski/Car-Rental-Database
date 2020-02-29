CREATE PROCEDURE AdminSchema.InsertCarshowroom 
		@AdressID int NULL
AS 
BEGIN
	INSERT INTO AdminSchema.Car_showroom
		(
		AdressID
		)
	VALUES
		(
		@AdressID
		)
END
GO

exec AdminSchema.InsertCarshowroom
	@AdressID = 15
go
exec AdminSchema.InsertCarshowroom
	@AdressID = 17
go
exec AdminSchema.InsertCarshowroom
	@AdressID = 18
go
exec AdminSchema.InsertCarshowroom
	@AdressID = 19
go
exec AdminSchema.InsertCarshowroom
	@AdressID = 20
go