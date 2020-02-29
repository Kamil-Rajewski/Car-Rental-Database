Use Rajewski
go

-- outer procedure
Create Procedure AdminSchema.InsertNew_Vehicle
	-- Tabela VehicleCarshowroom
	@ShowroomID							int,
	@Registration_number				char(7),
	-- Tabela Vehicle
	-- Registration number already declared
	@Year_production					smallint = NULL,
	@ModelID							smallint = NULL,
	-- Tabela Model
	@Brand								varchar(20) NUll,
	@Model								varchar(20) NUll,
	@Seats								int  NULL,
	@Power								smallint NULL

	AS
	BEGIN
	-- create vehicle
			exec AdminSchema.InsertVehicleCarshowroom @ShowroomID = @ShowroomID, @Registration_number = @Registration_number
			exec AdminSchema.InsertVehicle @Registration_number = @Registration_number, @Year_production = @Year_production, @ModelID =@ModelID
			exec AdminSchema.InsertModel @Brand = @Brand, @Model = @Model, @Seats = @Seats, @Power = @Power
				
End
go


-- inner InsertVehicleCarshowroom procedure
CREATE PROCEDURE AdminSchema.InsertVehicleCarshowroom 
		@ShowroomID					int,
		@Registration_number	char(7)
AS 
BEGIN
	INSERT INTO AdminSchema.VehicleCarshowroom
		(
		ShowroomID,
		Registration_number
		)

GO

-- inner InsertVehicle procedure
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

-- inner InsertModel
CREATE PROCEDURE AdminSchema.InsertModel 
	@Brand				varchar(20) NUll,
	@Model				varchar(20) NUll,
	@Seats				int  NULL,
	@Power				smallint NULL
AS 
BEGIN
	INSERT INTO AdminSchema.Model
		(
		Brand,
		Model,
		Seats,
		AdminSchema.Model.Power
		)
	VALUES
	(
	@Brand,
	@Model,
	@Seats,
	@Power
	)
END
GO

exec AdminSchema.InsertNew_Vehicle
	@ShowroomID				= 1,
	@Registration_number	= 'TSZ8387',
	@Year_production		= '2003',
	@ModelID				= 1,
	@Brand					= 'VW',
	@Model					= 'Golf',
	@Seats					= 5,
	@Power					= 110
go

exec AdminSchema.InsertModel
	@Brand = 'Fiat',
	@Model = 'Panda',
	@Seats = 4,
	@Power = 220
go