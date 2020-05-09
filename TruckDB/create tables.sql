create database Automobile 
create schema avto 
CREATE TABLE avto.Truck
(
	Id						BIGINT					PRIMARY KEY 	IDENTITY(1,1),
	Brand					VARCHAR(35)				NOT NULL	,
	Model					VARCHAR(50)			NOT NULL	,
	Country					VARCHAR(320)		,
	YearGraduation			INT				NOT NULL,
	Price					FLOAT				NOT NULL,
	RegistrationPlate			VARCHAR(10)				NOT NULL,
	ImagePath			VARCHAR(max)			

)
CREATE TABLE avto.Users
(
	Id				BIGINT			PRIMARY KEY IDENTITY(1,1),
	FirstName		VARCHAR(35)		NOT NULL,
	LastName		VARCHAR(35)		NOT NULL,
	Email			VARCHAR(320)		NOT NULL	UNIQUE,
	PasswordHash				VARCHAR(128)		NOT NULL,
	RegistrationToken		VARCHAR(255)  ,
	ImagePath			VARCHAR(max)	,
	DateOfBirth				date,
	Sex					VARCHAR(10),
	Country				VARCHAR(50)
);

create table avto.UserTruck
(
UserId		BIGINT	NOT NULL,
TruckId		BIGINT	NOT NULL,
FOREIGN KEY(UserId) REFERENCES avto.Users(Id)  ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(TruckId)   REFERENCES avto.Truck(Id)		,
	PRIMARY KEY(UserId,TruckId)
)