Create view WorkerSchema.Worker as
Select * From AdminSchema.Worker

Create view ClientSchema.ViewModel as
Select * From AdminSchema.Vehicle

Create view ClientSchema.ViewVehicle as
Select * From AdminSchema.Vehicle

Create view ClientSchema.ViewAdress as
Select * From WorkerSchema.Adress