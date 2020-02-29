Use Rajewski 
Go 
Execute as user = 'Client'
Select Model.Brand, Model.Model, Vehicle.Year_Production From AdminSchema.Model
Join AdminSchema.Vehicle on AdminSchema.Vehicle.ModelID =AdminSchema. Model.ModelID

Use Rajewski 
Go 
Execute as user = 'Client'
Select Model.Brand, Model.Model From AdminSchema.Model
Join AdminSchema.Vehicle on AdminSchema.Vehicle.ModelID =AdminSchema. Model.ModelID
Where AdminSchema.Vehicle.Year_Production < 2009
