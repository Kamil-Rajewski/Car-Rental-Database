Use Rajewski
go
CREATE PROCEDURE AdminSchema.InsertVehicleCarshowroom 
		@ShowroomID int,
		@Registration_number char(7)
AS 
BEGIN
	INSERT INTO AdminSchema.VehicleCarshowroom
		(
		ShowroomID,
		Registration_number
		)
	VALUES
		(
		@ShowroomID,
		@Registration_number
		)
END
GO

exec AdminSchema.InsertVehicleCarshowroom
		@ShowroomID = 5,
		@Registration_number = 'WWA2346'
go
exec AdminSchema.InsertVehicleCarshowroom
		@ShowroomID = 7,
		@Registration_number = 'WSI8434'
go