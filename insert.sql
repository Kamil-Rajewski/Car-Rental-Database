USE Rajewski
go

Select * From Adress

insert into Adress(City, Postal_code, Street_number, Phone)
values 
('Warszawa', '02031',1, '111222333' ),
('Warszawa', '02930',12, '128495839'),
('Kielce', '89403', 11, '79427489'),
('Gdynia', '83943', 22, '385294822'),
('Poznañ', '76238', 43, '592849209'),
('Kraków', '43245', 77, '949592194'),
('Katowice', '45324', 344, '34531674'),
('Staszów', '34352', 34, '757395830'),
('Siedlce', '54235', 33, '494929394'),
('Rytwiany', '34621', 64, '354561324');

insert into Car_showroom(AdressID)
values
(1),
(2),
(9);

insert into Client(License_number, Insurance_number, Name, Surname, Birth_date, AdressID)
values
('83839', '234234', 'Jan', 'Kowalski', '1999-03-12', 3),
('928395', '3441123', 'Anna', 'Nowak', '1977-04-22', 4),
('324244', '2453245', 'Kamil', 'Robak', '1967-01-02', 5),
('42345353', '62345543', 'Gra¿yna', 'Lipska', '1977-09-30', 6);

insert into Model(Brand, Model, Seats, Power)
values
('VW', 'Golf', 5, 110),
('Ford', 'Focus', 5, 90),
('Ford', 'Mondeo', 5, 140),
('VW', 'Multivan', 7, 150),
('VW', 'Transit', 9, 140);

insert into Vehicle(Registration_number, Year_production, ModelID)
values
('TSZ2346', 2009, 1),
('WWA2346', 2008, 1),
('SI23864', 2006, 2),
('TK42361', 2012, 3),
('WA33635', 2013, 4),
('GD32269', 2002, 5);

insert into Worker(Name, Surname, ShowroomID, AdressID)
values
('Marek', 'Kot', 1, 5),
('Tomasz', 'B¹k', 2, 6),
('Jacek', 'Janusz', 1, 7),
('Bartosz', 'Falkowski', 1, 8),
('Hanna', 'Grabska', 3, 10);

insert into VehicleCarshowroom(ShowroomID, Registration_number)
values
(1, 'TSZ2346'),
(2, 'WWA2346'),
(1, 'SI23864'),
(2, 'TK42361'),
(3, 'WA33635'),
(1, 'GD32269');

insert into Orders(Return_date, Receipt_date, Order_date, WorkerID, ClientID, Registration_number)
values
('2019-10-20 13:00:00', '2019-10-18 12:00:00', '2019-10-15 15:00:00', 1, 1, 'TSZ2346'),
('2019-10-15 09:00:00','2019-10-09 12:00:00','2019-10-08 13:00:00', 2 ,2 , 'SI23864'),
('2019-10-10 16:00:00', '2019-10-05 11:30:00', '2019-10-03 17:00:00', 3, 3, 'TK42361'),
('2019-09-24 14:00:00', '2019-09-15 15:00:00', '2019-09-12 15:00:00', 4, 4, 'WA33635'),
('2019-09-23 12:00:00', '2019-08-10 15:00:00', '2019-08-02 15:00:00', 2, 1, 'TSZ2346');



