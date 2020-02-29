Use Rajewski
go

CREATE INDEX IX_Model_Brand ON AdminSchema.Model(Brand)
CREATE INDEX IX_Client_Surname ON WorkerSchema.Client(Surname)
CREATE INDEX IX_Worker_Surname ON AdminSchema.Worker(Surname)
CREATE INDEX IX_Adress_City ON WorkerSchema.Adress(City)
CREATE INDEX IX_Client_Licensenumber ON WorkerSchema.Client(License_number)
CREATE INDEX IX_Order_Receiptdate ON WorkerSchema.Orders(Receipt_date)