Drop database if exists carRental;

Create database carRental CHARACTER SET UTF8 COLLATE utf8_hungarian_ci;

use carRental;

Create table cars (
  id int not null primary key auto_increment,
  licenseNumber varchar(20) not null unique,
  brandAndType varchar(100) not null
);

Create table rentals (
  id int not null primary key auto_increment,
  carId int not null,
  customerName varchar(100) not null,
  fromDate datetime not null,
  days int null,
  pricePerDay numeric(10, 2),
  abroad bit not null default (0),
  constraint fk_rentals_carId foreign key (carId)
    references cars (id)
);

Insert into cars (licenseNumber, brandAndType) values ('H YPR-303', 'Alfa Romeo Spider');
Insert into cars (licenseNumber, brandAndType) values ('H YXK-978', 'BWM M5');
Insert into cars (licenseNumber, brandAndType) values ('H JKC-873', 'Citroen C4');
Insert into cars (licenseNumber, brandAndType) values ('H PZS-652', 'Daewoo Tico');
Insert into cars (licenseNumber, brandAndType) values ('H SKL-913', 'Eicheer');
Insert into cars (licenseNumber, brandAndType) values ('H TOG-987', 'Ferrari F40');
Insert into cars (licenseNumber, brandAndType) values ('H GSD-509', 'GMC ');
Insert into cars (licenseNumber, brandAndType) values ('H BHW-342', 'Honda Civic');
Insert into cars (licenseNumber, brandAndType) values ('H HUW-228', 'Infinity ');
Insert into cars (licenseNumber, brandAndType) values ('H HBP-227', 'Jaguar E-Type');


insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Leann Grinishin', '2021-04-24', 19, 38414);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Brod Rowlstone', '2022-03-06', 23, 30460);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Georges Domke', '2021-07-15', 3, 42569);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Merrill Mauro', '2022-01-26', 9, 33122);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Mikael Halewood', '2021-01-21', 5, 43338);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Cathyleen Shade', '2021-07-30', 9, 46582);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Conni Ducker', '2021-03-18', null, 41096);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Mario Crum', '2021-10-06', 19, 37339);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Ferd Balchen', '2021-09-25', 4, 34447);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Saw Spacy', '2021-12-22', null, 44089);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Leesa Libero', '2021-01-30', 7, 35280);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Salomi Phelan', '2021-09-17', 8, 43768);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Vilma Rosita', '2021-06-22', 13, 39072);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Fidole Criag', '2021-03-20', null, 49195);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Carlene Kildale', '2021-12-18', 15, 41650);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Darice Reah', '2021-09-06', 14, 37678);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Zacherie Downie', '2021-05-17', 10, 39794);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Bobbie Gomby', '2021-01-24', 1, 32793);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Jess Cristoforo', '2021-07-19', 8, 41866);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Aldo Krishtopaittis', '2021-03-23', null, 41753);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Faber Ralston', '2021-03-21', 22, 37492);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Kellie Mundwell', '2021-10-04', 21, 41360);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Tory Reville', '2021-03-30', 12, 34109);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Evvie Fitchett', '2021-05-23', 3, 46118);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Bibbye Harriss', '2021-09-12', 7, 36033);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Alikee Embery', '2021-05-20', 17, 35921);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Ellswerth Pero', '2021-10-25', 24, 33142);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Jecho Poter', '2021-08-27', 10, 35698);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Land Awde', '2021-12-13', 21, 49409);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Ase Frisdick', '2022-02-28', 7, 34533);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Lovell Kemsley', '2021-04-29', 14, 32298);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Marta Bickers', '2021-12-10', 11, 40748);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Gabrila Szymanowski', '2021-11-26', 5, 35943);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'D''arcy Willoway', '2021-06-18', 25, 42800);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Sib Chaston', '2021-04-26', 8, 45803);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Skelly Peplow', '2021-06-19', null, 45265);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Debby Hinks', '2021-03-04', 11, 40197);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Rois Peeke', '2021-02-21', 1, 32829);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Gabrielle Wickendon', '2021-12-04', 14, 49541);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Brig Pogson', '2021-04-18', 11, 30768);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Hyatt Sinnat', '2021-01-14', null, 34309);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Cheryl Blount', '2022-02-02', 19, 36957);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Christan Tuiller', '2021-08-15', 11, 45343);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Dino Tester', '2021-08-21', 14, 32291);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Leone Hearnah', '2021-06-18', 24, 30616);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Forster Fairbeard', '2021-10-10', 20, 32102);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Harry Dimitresco', '2021-10-05', 15, 30732);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Waly Peres', '2021-12-21', 9, 48302);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Bobbi Steabler', '2021-06-05', null, 31096);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Ty Boole', '2021-08-10', 8, 35272);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Hiram Dobbison', '2021-08-13', null, 40508);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Man Tenwick', '2021-12-17', 25, 31131);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Nicola Cornuau', '2021-05-10', 3, 38633);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Melly Auton', '2021-03-19', 14, 40306);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Alessandro Thonger', '2021-06-27', 22, 32830);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Kip Calan', '2021-11-19', 1, 36198);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Meghann Reihm', '2021-07-22', 9, 40187);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Caria Tytcomb', '2021-10-28', 1, 33253);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Phillip Rickeard', '2021-04-27', 9, 30014);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Glynnis Glaum', '2021-09-30', 9, 44273);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Cecilius Howard - Gater', '2022-02-06', null, 49705);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Doralin O'' Flaherty', '2021-03-28', null, 44345);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Davey McGauhy', '2021-10-17', 25, 39718);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Travus Davidzon', '2021-05-19', 1, 37096);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Pepillo Bainbridge', '2021-05-09', null, 30637);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Dare Kun', '2021-03-20', null, 43303);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Balduin Bisson', '2021-09-18', 1, 37559);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Frayda Delle', '2022-02-15', 18, 37621);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Jameson Naisey', '2021-07-31', 3, 42082);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Ange Roskelly', '2021-01-19', 10, 44201);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Dru Sponder', '2021-02-15', 22, 46177);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Mirabella Matussow', '2021-07-30', null, 41070);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Shana Arch', '2022-01-16', 16, 34323);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Garrott Sandercock', '2021-11-06', 25, 46982);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Holmes Dabell', '2021-06-16', null, 43270);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Blanca Cosgriff', '2021-04-01', 21, 48014);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Aland Madgwich', '2021-11-25', 8, 37615);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Wendall Burnyate', '2021-12-23', 23, 32373);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Anneliese Worling', '2022-01-12', 24, 38091);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Shauna Goreisr', '2021-07-23', 5, 30839);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Kleon Dauby', '2021-06-24', null, 38108);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Elton Raft', '2021-03-11', 7, 31802);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Octavius Redwall', '2021-08-07', 2, 38507);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Lauraine Leer', '2021-01-01', 13, 43673);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Clem Pyne', '2021-05-14', null, 45635);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Marlena McCullum', '2021-10-13', 13, 34025);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Orren Kynan', '2022-01-08', 4, 47786);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Emma Ingerith', '2021-12-08', null, 38839);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Cathi Armand', '2021-10-21', 1, 39415);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Sib Lesor', '2021-07-08', 21, 37602);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Drusi Cowdery', '2022-01-01', 2, 42931);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Andris Swaysland', '2021-03-21', 8, 33499);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Krysta Leffek', '2021-01-11', 2, 44694);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Zechariah Tilly', '2021-06-12', 3, 34099);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Darice Hitzke', '2021-11-01', 4, 46556);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'West Aleksidze', '2021-11-07', 11, 40290);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Blancha Domotor', '2021-12-24', 12, 38016);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Ade Blogg', '2021-12-10', 12, 44465);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Juline Malone', '2022-02-22', 15, 33023);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Cassius Axford', '2021-11-12', 18, 32451);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Albert Britten', '2021-12-07', 13, 37288);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Ranice Bordone', '2021-01-02', 1, 36736);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Wilek Mumbey', '2021-02-13', null, 44941);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Lacey Jaquest', '2021-07-08', 15, 46503);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Vicki Mc-Kerley', '2021-09-02', 25, 48309);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Brook Frankcom', '2021-12-13', 1, 36099);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Bethina Suarez', '2021-04-11', 18, 36992);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Neddie Biles', '2021-01-16', 16, 35873);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Odilia Crewes', '2021-02-03', 6, 38435);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Karlene Cruce', '2021-10-06', 3, 34139);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Carey Chesley', '2021-08-05', 22, 40870);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Lila Allett', '2021-06-18', 25, 34560);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Gery Catley', '2021-08-07', 13, 35598);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Jakob Sigsworth', '2021-04-21', 1, 38097);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Pat Malia', '2022-02-19', 13, 36326);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Laurella Rayhill', '2021-06-11', 25, 32050);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Bevan Johananoff', '2021-10-26', 9, 49492);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Viola Spyby', '2021-02-17', 8, 31550);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Lurette Feria', '2021-12-03', 5, 43087);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Merrill Reuter', '2021-08-22', null, 35511);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Davin De la Yglesias', '2022-01-10', null, 46024);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Brod Wildblood', '2021-03-14', 11, 31252);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Christoph Lukehurst', '2021-12-28', 16, 34484);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Baird Robertazzi', '2021-12-04', 18, 32510);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Valencia Boord', '2021-11-20', null, 38693);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Ivette Watkiss', '2021-03-12', 19, 48616);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Bell Frondt', '2021-06-01', 8, 33129);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Quintin Kittoe', '2021-03-04', 7, 47962);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Corbin Maruska', '2021-02-26', 23, 34658);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Felipe Klas', '2021-11-09', 5, 43751);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Tan Prescot', '2022-01-21', 13, 45144);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Car Grimstead', '2022-01-07', 19, 46976);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Leonore Plover', '2021-09-11', 2, 47072);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Wilek Minchi', '2021-01-23', 8, 40225);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Shell Rounsefull', '2021-07-18', 15, 49066);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Micaela Delooze', '2021-03-13', 9, 49908);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Mile Walsh', '2021-02-17', 3, 48037);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Corella De Mattia', '2021-10-11', 2, 48071);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Desirae Berthe', '2021-10-15', 8, 34366);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Burke Esley', '2021-12-20', 18, 39533);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Rollins Keating', '2021-09-19', 12, 43761);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Berthe Chew', '2021-04-11', 18, 48352);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Agustin Cleynman', '2021-03-12', 8, 32970);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Josefa Schulze', '2021-10-01', 7, 37244);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Rina Siveyer', '2021-12-07', null, 40084);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Daphne Vigrass', '2021-07-19', 11, 30328);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Kerr Svanini', '2022-02-02', 16, 37177);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Leslie Parrish', '2021-02-24', null, 39425);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Binni Cherry', '2021-12-06', 24, 45515);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Dyane Pavelka', '2021-01-10', 1, 33280);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Dinah Uc', '2021-05-03', 17, 48688);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Godfry Lago', '2022-01-04', 17, 36437);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Susan McKennan', '2021-11-07', 23, 44595);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Rosaline Peddersen', '2021-12-26', null, 49315);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Granger Chastanet', '2021-05-17', 19, 34813);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Maudie Trillo', '2021-03-30', null, 40009);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Maddi Patshull', '2021-12-06', 2, 38925);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Brew Roelofs', '2021-01-03', 9, 38810);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Gay Lightowlers', '2021-10-11', 9, 32635);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Reagen Crinson', '2021-01-12', 21, 39944);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Joletta Churching', '2021-03-04', 23, 37224);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Lise Raff', '2021-02-04', 17, 37154);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Ira Fairbard', '2021-07-13', 8, 34338);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Guido Weatherall', '2021-04-29', 25, 33934);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Anabal Pickless', '2021-07-07', 20, 39242);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Mela Friedman', '2021-10-15', 7, 30113);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Ike Boice', '2021-01-07', 2, 42322);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Nannette Vida', '2022-01-03', 24, 45593);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Colene Lorek', '2021-06-04', 24, 31892);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Garvin Cosham', '2021-03-04', 24, 38588);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Shani Bortolazzi', '2021-04-14', 22, 37315);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Tan McCord', '2021-11-28', 3, 47961);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Ivan Morman', '2021-12-21', 3, 40783);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Valenka Bucklan', '2021-08-24', 7, 35658);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'John Elliman', '2021-08-29', null, 46461);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (1, 'Jaquenetta Bosch', '2021-10-25', 17, 38690);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (3, 'Antonia Cockren', '2021-12-13', 25, 48824);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Pegeen Maccrea', '2021-08-17', 2, 43214);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Leonie Shiers', '2021-10-10', 10, 32793);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Sayre Stoite', '2021-07-06', 7, 42612);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Sharyl Purdy', '2021-12-22', 15, 46065);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Amelie Coveley', '2021-09-06', 5, 46761);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Eula Spraberry', '2021-06-02', 24, 39733);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Jessica Pope', '2021-12-27', 21, 45282);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Martina Raisher', '2021-05-01', 20, 43467);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Brantley Cordon', '2022-03-02', 23, 38906);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Johnny Nannini', '2021-12-10', 21, 48703);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (2, 'Lucila Dudleston', '2021-05-11', 21, 41402);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (8, 'Pavia Hilling', '2021-09-20', 13, 31643);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Westleigh Staite', '2021-06-13', 9, 43954);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (9, 'Clementia Ferrers', '2021-11-01', 18, 35647);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Valle Donne', '2021-08-06', 16, 31551);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Antonella Dubock', '2022-01-14', 4, 44521);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (5, 'Tersina Pidwell', '2021-02-20', null, 30718);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (6, 'Nonah Slinn', '2021-03-31', 10, 30891);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Drucy Edgar', '2021-11-19', null, 32338);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Gavrielle Sainte Paul', '2021-03-17', 3, 40386);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (4, 'Lorena Nolin', '2021-11-10', 16, 47680);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (7, 'Garwood Sarton', '2021-11-07', 4, 41307);
insert into rentals (carId, customerName, fromDate, days, pricePerDay) values (10, 'Gwenneth Greenrde', '2022-02-24', 15, 49805);