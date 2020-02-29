Use Rajewski 
go
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

exec AdminSchema.InsertModel
	@Brand = 'Alfa Romeo',
	@Model = 'Gulia',
	@Seats = 5,
	@Power = 210
go

exec AdminSchema.InsertModel
	@Brand = 'Fiat',
	@Model = '125p',
	@Seats = 5,
	@Power = 90
go

exec AdminSchema.InsertModel
	@Brand = 'Fiat',
	@Model = 'Panda',
	@Seats = 4,
	@Power = 220
go