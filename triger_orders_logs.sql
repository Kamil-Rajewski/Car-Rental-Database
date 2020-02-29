Use Rajewski	
Go

Create Trigger WorkerSchema.Orders_Log
ON WorkerSchema.Orders
After Update
AS
	If update(Return_date)
	Begin
	Insert Into AdminSchema.logs(User_change, Historydate, Table_change, Column_name, Old_value, Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Orders','Return_date', d.Return_date, 'UPDATE'
	from deleted d
	End

	If update(Receipt_date) Begin
	Insert Into AdminSchema.logs(User_change, Historydate,Table_change,Column_name, Old_value,Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Orders','Receipt_date',d.Receipt_date, 'UPDATE'
	from deleted d End

	If update(Order_date) Begin
	Insert Into AdminSchema.logs(User_change, Historydate, Table_change, Column_name, Old_value, Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Orders','Order_date', d.Order_date, 'UPDATE'
	from deleted d End
	
	If update(WorkerID) Begin
	Insert Into AdminSchema.logs(User_change, Historydate, Table_change, Column_name, Old_value, Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Orders','WorkerID',d.WorkerID, 'UPDATE'
	from deleted d End

	If update(ClientID) Begin
	Insert Into AdminSchema.logs(User_change, Historydate, Table_change, Column_name, Old_value, Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Orders','ClientID', d.ClientID, 'UPDATE'
	from deleted d End

	If update(Registration_number) Begin
	Insert Into AdminSchema.logs(User_change, Historydate, Table_change, Column_name, Old_value, Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Orders','Registration_number', d.Registration_number, 'UPDATE'
	from deleted d End
GO

Create Trigger WorkerSchema.Adress_Log
ON WorkerSchema.Adress
After Update
AS
	If update(City)
	Begin
	Insert Into AdminSchema.logs(User_change, Historydate,Table_change,Column_name, Old_value,Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Adress','City', d.City, 'UPDATE'
	from deleted d
	End
	If update(Postal_code)
	Begin
	Insert Into AdminSchema.logs(User_change, Historydate,Table_change,Column_name, Old_value,Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Adress','City', d.Postal_code, 'UPDATE'
	from deleted d
	End
	If update(Street_number)
	Begin
	Insert Into AdminSchema.logs(User_change, Historydate,Table_change,Column_name, Old_value,Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Adress','City', d.Street_number, 'UPDATE'
	from deleted d
	End
	If update(Phone)
	Begin
	Insert Into AdminSchema.logs(User_change, Historydate,Table_change,Column_name, Old_value,Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Adress','City', d.Phone, 'UPDATE'
	from deleted d
	End
Go

Create Trigger WorkerSchema.Adress_Delete_Log
ON WorkerSchema.Adress
FOR DELETE
AS
BEGIN
	Insert Into AdminSchema.logs(User_change, Historydate,Table_change,Column_name, Old_value,Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Adress','All columns', 'All columns', 'Delete'
	from deleted d
	End
Go

Create Trigger WorkerSchema.Orders_Delete_Log
ON WorkerSchema.Orders
FOR DELETE
AS
BEGIN
	Insert Into AdminSchema.logs(User_change, Historydate, Table_change, Column_name, Old_value, Operation_type)
	Select USER_NAME(), GETDATE(),'WorkerSchema.Orders','All columns', 'All columns', 'Delete'
	from deleted d
	End
Go