Use Rajewski
go

-- Create tables section -------------------------------------------------

-- Table Vehicle

CREATE TABLE [Vehicle]
(
 [Registration_number] Char(7) NOT NULL,
 [Year_production] Smallint DEFAULT 1900 NOT NULL,
 [ModelID] Smallint NOT NULL,
 Constraint UC_Vehicle UNIQUE (Registration_number)
)
go

-- Add keys for table Vehicle

ALTER TABLE [Vehicle] ADD CONSTRAINT [PK_Vehicle] PRIMARY KEY ([Registration_number])
go

-- Table Car showroom

CREATE TABLE [Car_showroom]
(
 [ShowroomID] Int IDENTITY NOT NULL,
 [AdressID] Int NOT NULL,
 Constraint UC_Showroom UNIQUE (ShowroomID)
)
go

-- Add keys for table Car showroom

ALTER TABLE [Car_showroom] ADD CONSTRAINT [PK_Car showroom] PRIMARY KEY ([ShowroomID])
go


-- Table Adress

CREATE TABLE [Adress]
(
 [AdressID] Int IDENTITY NOT NULL,
 [City] Varchar(25) NOT NULL,
 [Postal_code] Char(5) NOT NULL,
 [Street_number] Varchar(8) NOT NULL,
 [Phone] Varchar(20) NOT NULL,
 Constraint UC_Adress UNIQUE (AdressID)
)
go

-- Add keys for table Adress

ALTER TABLE [Adress] ADD CONSTRAINT [PK_Adress] PRIMARY KEY ([AdressID])
go


-- Table VehicleCarshowroom

CREATE TABLE [VehicleCarshowroom]
(
 [ShowroomID] Int NOT NULL,
 [Registration_number] Char(7) NOT NULL
)
go

-- Add keys for table [VehicleCarshowroom]

-- Table Model

CREATE TABLE [Model]
(
 [Brand] Varchar(20) NOT NULL,
 [Model] Varchar(20) NOT NULL,
 [Seats] Int NOT NULL,
 [ModelID] Smallint IDENTITY NOT NULL,
 [Power] Smallint NOT NULL,
 Constraint UC_Model UNIQUE (ModelID)
)
go

-- Add keys for table Model

ALTER TABLE [Model] ADD CONSTRAINT [PK_Model] PRIMARY KEY ([ModelID])
go

-- Table Order

CREATE TABLE [Orders]
(
 [OrderID] Int IDENTITY NOT NULL,
 [Return_date] Datetime NOT NULL,
 [Receipt_date] Datetime,
 [Order_date] Datetime NOT NULL,
 [WorkerID] Int NOT NULL,
 [ClientID] Int NOT NULL,
 [Registration_number] Char(7) NOT NULL,
 Constraint UC_Orders UNIQUE (OrderID)
)
go

-- Add keys for table Order

ALTER TABLE [Orders] ADD CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID])
go

-- Table Client

CREATE TABLE [Client]
(
 [License_number] Varchar(30) NOT NULL,
 [Insurance_number] Varchar(30) NOT NULL,
 [Name] Varchar(20) NOT NULL,
 [Surname] Varchar(30) NOT NULL,
 [Birth_date] Date NOT NULL,
 [ClientID] Int IDENTITY NOT NULL,
 [AdressID] Int NOT NULL
 Constraint UC_Client UNIQUE (ClientID)
)
Go

-- Add keys for table Client
ALTER TABLE [Client] ADD CONSTRAINT [PK_Client] PRIMARY KEY ([ClientID])
go


-- Table Worker

CREATE TABLE [Worker]
(
 [WorkerID] Int IDENTITY NOT NULL,
 [Name] Varchar(20) NOT NULL,
 [Surname] Varchar(30) NOT NULL,
 [ShowroomID] Int NOT NULL,
 [AdressID] Int NOT NULL
 Constraint UC_Worker UNIQUE (WorkerID)
)
Go

-- Add keys for table Worker

ALTER TABLE [Worker] ADD CONSTRAINT [PK_Worker] PRIMARY KEY ([WorkerID])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 

-- Vehicle
ALTER TABLE [Vehicle] ADD CONSTRAINT [FK_Vehicle_Model] FOREIGN KEY ([ModelID]) REFERENCES [Model] ([ModelID]) ON UPDATE CASCADE ON DELETE CASCADE
go

--VehileCarShowroom
ALTER TABLE [VehicleCarshowroom] ADD Constraint [FK_VehicleCarshowroom_Vehicle] FOREIGN KEY ([Registration_number]) REFERENCES [Vehicle] ([Registration_number]) ON UPDATE CASCADE ON DELETE CASCADE
go
ALTER TABLE [VehicleCarshowroom] ADD Constraint [FK_VehicleCarshowroom_Car_showroom] FOREIGN KEY ([ShowroomID]) REFERENCES [Car_showroom] ([ShowroomID])  ON UPDATE CASCADE ON DELETE CASCADE
go

-- Car showroom
ALTER TABLE [Car_showroom] ADD Constraint [FK_Car_showroom_Adress] FOREIGN KEY ([AdressID]) REFERENCES [Adress] ([AdressID]) ON UPDATE CASCADE ON DELETE CASCADE
go

-- Order
ALTER TABLE [Orders] ADD CONSTRAINT [FK_Order_Worker] FOREIGN KEY ([WorkerID]) REFERENCES [Worker] ([WorkerID])  ON UPDATE CASCADE ON DELETE CASCADE
go
Alter Table [Orders] ADD CONSTRAINT [FK_Order_Client] FOREIGN KEY ([ClientID]) REFERENCES [Client] ([ClientID]) ON UPDATE CASCADE ON DELETE CASCADE
go
Alter Table [Orders] ADD CONSTRAINT [FK_Order_Vehicle] FOREIGN KEY ([Registration_number]) REFERENCES [Vehicle] ([Registration_number]) ON UPDATE CASCADE ON DELETE CASCADE
go

-- Client
Alter Table [Client] ADD CONSTRAINT [FK_Client_Adress] FOREIGN KEY ([AdressID]) REFERENCES [Adress] ([AdressID]) ON UPDATE CASCADE ON DELETE CASCADE
go

-- Worker
Alter Table [Worker] ADD CONSTRAINT [FK_Worker_Adress] FOREIGN KEY ([AdressID]) REFERENCES [Adress] ([AdressID]) ON UPDATE NO ACTION
go
Alter Table [Worker] ADD CONSTRAINT [FK_Worker_Car_showroom] FOREIGN KEY ([ShowroomID]) REFERENCES [Car_showroom] ([ShowroomID]) ON UPDATE NO ACTION
go
