CREATE DATABASE IF NOT EXISTS db_bike_racing;
USE db_bike_racing;

DROP TABLE IF EXISTS tbl_racer_details;
CREATE TABLE IF NOT EXISTS tbl_racer_details (
  UserID int(11) NOT NULL AUTO_INCREMENT,
  UserName varchar(100) DEFAULT NULL,
  FirstName varchar(100) DEFAULT NULL,
  LastName varchar(100) DEFAULT NULL,
  Email varchar(200) DEFAULT NULL,
  PhoneNO varchar(100) DEFAULT NULL,
  Age int(10) DEFAULT NULL,
  Password varchar(100) DEFAULT NULL,
  UserRoles varchar(100) DEFAULT NULL,
  BYKE varchar(100) DEFAULT NULL,
  PRIMARY KEY (UserID)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_racer_details (UserID, UserName, FirstName, LastName, Email, PhoneNO, Age, Password, UserRoles, BYKE) VALUES
(1, 'aravind', 'Aravind', 'Annaboina', 'aravind@gmail.com', 'aravind@gmail.com', 32, 'aravind', 'Turnament Management', ''),
(8, 'pramithi', 'Pramithi', 'Kongara', 'pramithi@gmail.com', '87678678676', 25, 'pramithi', 'Racers', 'Kawasaki Ninja ZX-10R');



DROP TABLE IF EXISTS tbl_race_detail;
CREATE TABLE IF NOT EXISTS tbl_race_detail (
  ID int(11) NOT NULL AUTO_INCREMENT,
  Race_date date DEFAULT NULL,
  Price decimal(10,2) DEFAULT 0.00,
  Location varchar(300) DEFAULT NULL,
  Race_Detail varchar(300) DEFAULT NULL,
  Winner varchar(300) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_race_detail (ID, Race_date, Price, Location, Race_Detail, Winner) VALUES
(9, '2023-05-12', '1000.00', 'New York', 'Championship', 'Pramithi Kongara'),
(10, '2023-05-16', '2000.00', 'Illinois', 'New Championship', NULL);


DROP TABLE IF EXISTS tbl_race_participate_det;
CREATE TABLE IF NOT EXISTS tbl_race_participate_det (
  ID int(11) NOT NULL,
  RacerId int(11) DEFAULT NULL,
  RaceId int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_race_participate_det (ID, RacerId, RaceId) VALUES
(0, 8, 9);
COMMIT;