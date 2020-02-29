CREATE PROCEDURE AdminSchema.InsertVehicle 
	@Registration_number				char(7) = NULL,
	@Year_production					smallint = NULL,
	@ModelID							smallint = NULL
AS 
BEGIN
	INSERT INTO AdminSchema.Vehicle
		(
		Registration_number,
		Year_production,
		ModelID
		)
	VALUES
	(
	@Registration_number,
	@Year_production,
	@ModelID
	)
END
GO

exec AdminSchema.InsertVehicle
	@Registration_number = 'WSI8434',
	@Year_production = 2012,
	@ModelID = 7