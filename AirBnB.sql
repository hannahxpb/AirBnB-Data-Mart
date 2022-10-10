CREATE DATABASE IF NOT EXISTS airbnb;

CREATE TABLE Gender(
    Gender VARCHAR(100),
    PRIMARY KEY (Gender)
);
INSERT INTO Gender (Gender) VALUES ('Male'),('Female'),('Diverse');


CREATE TABLE Address_type(
    Type VARCHAR(100),
    PRIMARY KEY (Type)
);
INSERT INTO Address_type(Type) VALUES ('Listing address'), ('Postal address');


CREATE TABLE Privacy_level(
    Level VARCHAR(100),
    PRIMARY KEY (Level)
);
INSERT INTO Privacy_level(Level) VALUES ('Entire accommodation'), ('Shared room'), ('Private room');


CREATE TABLE Listing_type(
    Type VARCHAR(100),
    PRIMARY KEY (Type)
);
INSERT INTO Listing_type(Type) VALUES ('Hotel'), ('Flat'), ('House'), ('Guest house');


CREATE TABLE Picture_type(
    Type VARCHAR(100),
    PRIMARY KEY (Type)
);
INSERT INTO Picture_type(Type) VALUES ('Profile picture'), ('Listing picture');


CREATE TABLE Creditcard_type(
    Type VARCHAR(100),
    PRIMARY KEY (Type)
);
INSERT INTO Creditcard_type(Type) VALUES ('private'), ('business');


CREATE TABLE Booking_status(
    Status VARCHAR(100),
    PRIMARY KEY (Status)
);
INSERT INTO Booking_status(Status) VALUES ('booked'), ('cancelled'), ('completed'), ('aborted');


CREATE TABLE Payment_status(
    Status VARCHAR(100),
    PRIMARY KEY (Status)
);
INSERT INTO Payment_status(Status) VALUES ('paid'), ('not paid'), ('could not be processed');


CREATE TABLE User(
    UserID INT AUTO_INCREMENT NOT NULL,
    Gender VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    First_name VARCHAR(150) NOT NULL,
    Last_name VARCHAR(150) NOT NULL,
    Description VARCHAR(1000),
    Birthday DATE NOT NULL,
    Phone VARCHAR(50) NOT NULL,
    PRIMARY KEY (UserID),
    FOREIGN KEY (Gender) REFERENCES Gender(Gender)
);

insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'tvance0@techcrunch.com', 'aw0kTyyklI', 'Tiebout', 'Vance', 'I am a sports science student who enjoys eating out, listening to music and upcycling. Looking forward to meet new people!', '2002-11-12', '+1 (776) 778-3437');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'hsircombe1@narod.ru', 'n86QVece', 'Hobie', 'Sircombe', null, '1945-03-17', '+81 (713) 336-1319');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'rbrickdale2@harvard.edu', 'xdderURc', 'Ruthe', 'Brickdale', 'My name is Ruth and together with my partner John, we love to travel and see new places.', '1990-09-09', '+54 (271) 134-3858');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'cbladder3@dion.ne.jp', 'l3rkBSvzjeNZ', 'Coral', 'Bladder', null, '1989-01-16', '+86 (932) 884-7229');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'jgatty4@unc.edu', '4mgd8mRUDbk7', 'Joelle', 'Gatty', null, '1992-12-20', '+55 (385) 710-2931');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'kfurby5@nasa.gov', 'VeTSKpTFJ', 'Korrie', 'Furby', 'Hi! See my listings below and get ready to feel right at home at our place.', '1950-08-17', '+1 (412) 460-3311');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Diverse', 'fsichardt6@booking.com', 'DGXbswqEuun', 'Ferrell', 'Sichardt', null, '1984-12-23', '+86 (460) 215-7163');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Diverse', 'ocarletto7@jugem.jp', 'DXkhw4U1U9v', 'Othella', 'Carletto', null, '1972-12-01', '+48 (603) 674-6477');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'dburree8@wunderground.com', 'aZy9KF', 'Derril', 'Burree', null, '2003-01-10', '+236 (988) 907-7005');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'eschukraft9@gmpg.org', 'ONPS22KXI', 'Evey', 'Schukraft', 'I am Evey, I am from New York and I will visit Europe in the summer. Looking for cool places and a great time.', '1984-02-21', '+86 (651) 405-1210');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'hbramwella@sbwire.com', 'Y6k6fYaznkfE', 'Hermina', 'Bramwell', null, '1952-07-01', '+7 (903) 644-4006');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'ntreaceb@topsy.com', 'lYdjIOvIpj', 'Nadia', 'Treace', null, '2000-10-19', '+86 (832) 813-7962');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'jbransdenc@free.fr', 't7IWdeuD93V', 'Joletta', 'Bransden', null, '1978-02-20', '+7 (107) 434-0025');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'amorenad@tinyurl.com', 'GM0ancd2qDR', 'Ansley', 'Morena', 'Currently planning my world travel for 2024!', '1977-11-12', '+962 (981) 317-6511');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'cfurlowe@cisco.com', 'oBgX9XX', 'Connie', 'Furlow', null, '1959-05-05', '+970 (734) 772-0557');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'abagwellf@naver.com', 'TmskdF', 'Annice', 'Bagwell', null, '1978-06-14', '+92 (163) 920-7355');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'rnalderg@hibu.com', 'zNVwnY', 'Rosemonde', 'Nalder', null, '1951-12-17', '+60 (229) 871-5187');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'jmyhanh@constantcontact.com', 'EnLrhYPeUM', 'June', 'Myhan', null, '1973-05-25', '+351 (602) 324-5195');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'obevesi@rediff.com', 'xOZkpqkQaU5', 'Odey', 'Beves', null, '1980-09-01', '+48 (489) 155-0416');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'lleganj@ed.gov', 'LYIUFgAv4v', 'Lars', 'Legan', null, '1982-05-03', '+33 (564) 134-0791');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'tmillichip0@friendfeed.com', 'U9bNCy2x', 'Terrie', 'Millichip', 'Retired and looking for cool places to stay.', '1958-09-13', '+370 (888) 987-2114');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'kpluthero1@columbia.edu', 'Rd4R2AY3Cb', 'Kristel', 'Pluthero', null, '1972-08-22', '+351 (974) 718-8108');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Diverse', 'rburges2@java.com', '20by7nHBW', 'Rheta', 'Burges', null, '1968-06-28', '+86 (675) 499-9077');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'rballinghall3@marketwatch.com', 'TZxIXSCsMTkF', 'Reynolds', 'Ballinghall', null, '1969-02-23', '+93 (519) 558-7775');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'aperrott4@myspace.com', '4QhYa9a', 'Adan', 'Perrott', null, '1997-11-24', '+30 (168) 106-4795');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'rhanaford5@comsenz.com', 'VMzuxAPcv', 'Ricky', 'Hanaford', 'Always on the hunt for cute and interesting accommodations!', '1963-07-13', '+81 (311) 927-8278');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'vgentiry6@webs.com', 'ZKqejo', 'Valle', 'Gentiry', null, '1977-09-05', '+33 (997) 573-8382');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'vtunaclift7@joomla.org', 'aORLC7Bi', 'Violette', 'Tunaclift', null, '1973-03-04', '+30 (390) 732-2821');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'mworsnap8@plala.or.jp', '56htSb6Usv', 'Missy', 'Worsnap', null, '1979-06-08', '+230 (847) 177-3676');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'rjeal9@cbslocal.com', 'OWmPUaqupYk', 'Reuven', 'Jeal', null, '1983-11-08', '+7 (594) 314-8260');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'ngoodruma@seesaa.net', 'Uf7ntBLv8Pyz', 'Nomi', 'Goodrum', 'Loves South America, tea and cats.', '1956-04-08', '+685 (696) 551-5210');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'fgozardb@tripod.com', 'RuruVqZ', 'Frasquito', 'Gozard', null, '1989-12-29', '+963 (750) 146-5491');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'csemonc@theguardian.com', 'jlzM3Vy', 'Cymbre', 'Semon', 'I love to surf, so I amalways looking for nice places at the ocean.', '1991-08-16', '+86 (469) 282-1405');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'locained@4shared.com', 'akdGRNLMkC', 'Lyndsey', 'O''Caine', null, '1991-08-29', '+51 (192) 769-2895');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'hpeeblese@oracle.com', 'rcEDb3nh', 'Heida', 'Peebles', null, '1961-02-25', '+385 (242) 184-4486');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'cgrinstedf@lycos.com', '7KKL40l', 'Codi', 'Grinsted', null, '1983-04-23', '+41 (840) 601-0371');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Male', 'rklassmanng@tuttocitta.it', '4SYzUWD68A', 'Robb', 'Klassmann', null, '1961-01-24', '+86 (416) 998-7615');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'fsomersh@virginia.edu', '8Y0LxjtAZl', 'Fianna', 'Somers', null, '1967-06-16', '+962 (499) 243-9213');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'cbuckwelli@independent.co.uk', 'xeAZo4', 'Chloe', 'Buckwell', null, '1989-10-15', '+62 (303) 281-4160');
insert into User (Gender, Email, Password, First_name, Last_name, Description, Birthday, Phone) values ('Female', 'wclissoldj@ifeng.com', 'McevcX', 'Wanids', 'Clissold', 'Passion for staying in cool hostel and meeting awesome people.', '1997-07-21', '+351 (420) 184-2848');


CREATE TABLE Host(
    UserID INT NOT NULL,
    Superhost BOOL NOT NULL,
    PRIMARY KEY (UserID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

insert into Host (UserID, Superhost) values (1, true);
insert into Host (UserID, Superhost) values (2, true);
insert into Host (UserID, Superhost) values (3, true);
insert into Host (UserID, Superhost) values (4, false);
insert into Host (UserID, Superhost) values (5, false);
insert into Host (UserID, Superhost) values (6, false);
insert into Host (UserID, Superhost) values (7, true);
insert into Host (UserID, Superhost) values (8, false);
insert into Host (UserID, Superhost) values (9, true);
insert into Host (UserID, Superhost) values (10, false);
insert into Host (UserID, Superhost) values (11, false);
insert into Host (UserID, Superhost) values (12, true);
insert into Host (UserID, Superhost) values (13, false);
insert into Host (UserID, Superhost) values (14, false);
insert into Host (UserID, Superhost) values (15, true);
insert into Host (UserID, Superhost) values (16, false);
insert into Host (UserID, Superhost) values (17, false);
insert into Host (UserID, Superhost) values (18, false);
insert into Host (UserID, Superhost) values (19, false);
insert into Host (UserID, Superhost) values (20, false);

CREATE TABLE Guest(
    UserID INT NOT NULL,
    Credit_cardID INT,
    PRIMARY KEY (UserID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

insert into Guest (UserID, Credit_cardID) values (21, 1);
insert into Guest (UserID, Credit_cardID) values (22, 2);
insert into Guest (UserID, Credit_cardID) values (23, 3);
insert into Guest (UserID, Credit_cardID) values (24, 4);
insert into Guest (UserID, Credit_cardID) values (25, 5);
insert into Guest (UserID, Credit_cardID) values (26, 6);
insert into Guest (UserID, Credit_cardID) values (27, 7);
insert into Guest (UserID, Credit_cardID) values (28, 8);
insert into Guest (UserID, Credit_cardID) values (29, 9);
insert into Guest (UserID, Credit_cardID) values (30, 10);
insert into Guest (UserID, Credit_cardID) values (31, 11);
insert into Guest (UserID, Credit_cardID) values (32, 12);
insert into Guest (UserID, Credit_cardID) values (33, 13);
insert into Guest (UserID, Credit_cardID) values (34, 14);
insert into Guest (UserID, Credit_cardID) values (35, 15);
insert into Guest (UserID, Credit_cardID) values (36, 16);
insert into Guest (UserID, Credit_cardID) values (37, 17);
insert into Guest (UserID, Credit_cardID) values (38, 18);
insert into Guest (UserID, Credit_cardID) values (39, 19);
insert into Guest (UserID, Credit_cardID) values (40, 20);

CREATE TABLE Rating_guest(
    Rating_guestID INT AUTO_INCREMENT NOT NULL,
    GuestID INT NOT NULL,
    HostID INT NOT NULL,
    Text VARCHAR(1000) NOT NULL,
    Date DATE NOT NULL,
    PRIMARY KEY (Rating_guestID),
    FOREIGN KEY (GuestID) REFERENCES User(UserID),
    FOREIGN KEY (HostID) REFERENCES User(UserID)
    );

insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (1, 26, 10, 'Very quiet and nice guest.', '2011-03-21');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (2, 26, 3, 'They''re lways welcome again!', '2014-09-30');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (3, 29, 17, 'Missy and her girlfriend were great guests and are welcome anytime.', '2020-11-22');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (4, 23, 14, 'Nice people.', '2019-02-21');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (5, 35, 9, 'Make sure to visit us again soon!', '2009-09-13');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (6, 38, 20, 'They were great guests. Really kind and forthcoming.', '2015-08-16');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (7, 21, 15, 'Chill and nice guys.', '2018-12-17');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (8, 33, 3, 'I would welcome them again anytime!', '2018-09-06');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (9, 33, 11, 'Cymbre was really nice. She was quiet and followed all the house rules. Great gal!', '2022-04-03');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (10, 38, 6, 'Really enjoyed having Fianna as a guest. Come visit us soon, the dogs miss you already.', '2009-02-12');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (11, 27, 15, 'Valle is a great guy and a quiet guest.', '2021-04-11');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (12, 29, 14, 'All went well.', '2009-07-19');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (13, 22, 3, 'All good', '2015-01-29');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (14, 23, 8, 'It was great to meet Rheta!', '2014-07-12');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (15, 26, 19, 'Ricky was a great guest. She was very quiet and is was nice to meet her. Hope to see her again soon!', '2020-04-03');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (16, 35, 19, 'Very clean and nice.', '2017-06-03');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (17, 33, 8, 'Cymbre kept the apartment clean and was very nice.', '2012-04-30');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (18, 30, 20, 'Unfortunately, Reuven never showed up.', '2022-03-31');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (19, 36, 2, 'Great guests, see you soon!', '2013-03-24');
insert into Rating_guest (Rating_guestID, GuestID, HostID, Text, Date) values (20, 32, 7, 'Very nice people. Can''t recommend enough!', '2015-04-14');

CREATE TABLE Message(
    MessageID INT AUTO_INCREMENT NOT NULL,
    SenderID INT NOT NULL,
    RecipientID INT NOT NULL,
    Text VARCHAR(1000),
    Date DATE,
    PRIMARY KEY (MessageID),
    FOREIGN KEY (SenderID) REFERENCES User(UserID),
    FOREIGN KEY (RecipientID) REFERENCES User(UserID)
);

insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (1, 15, 29, 'Hey!', '2022-05-30');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (2, 11, 12, 'How are you?', '2014-08-18');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (3, 35, 21, 'Really love your place!', '2017-10-29');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (4, 27, 3, 'Do you have any more forks?', '2021-11-19');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (5, 34, 6, 'We will check in around 9 pm.', '2013-07-18');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (6, 31, 5, 'We are going to leave around 11 am.', '2017-05-06');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (7, 4, 39, 'How long do you plan to stay?', '2012-02-28');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (8, 15, 29, 'When will you arrive?', '2017-11-21');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (9, 4, 21, 'When will you check in?', '2020-05-04');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (10, 23, 15, 'Thank you for the warm welcome.', '2012-03-26');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (11, 40, 19, 'There''s dish soap missing. Do you have some?', '2021-10-02');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (12, 37, 21, 'I will leave early in the morning, I guess around 6 am to catch my flight.', '2015-07-26');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (13, 37, 11, 'Hi there!', '2013-09-30');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (14, 2, 28, 'Did you enjoy your stay?', '2012-02-25');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (15, 2, 29, 'Do you have any feedback for the place?', '2018-05-10');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (16, 6, 21, 'How did you like yoyr stay?', '2021-03-14');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (17, 40, 15, 'We will arrive later than anticipated.', '2016-08-19');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (18, 35, 13, 'Looking forward to our stay!', '2013-04-24');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (19, 25, 11, 'We''ll be there at 6 pm.', '2015-06-06');
insert into Message (MessageID, SenderID, RecipientID, Text, Date) values (20, 37, 17, 'Thanks for the booking!', '2020-03-17');

CREATE TABLE  Address(
    AddressID INT AUTO_INCREMENT NOT NULL,
    UserID INT,
    Address_type VARCHAR(100) NOT NULL,
    Street VARCHAR(100),
    House_number VARCHAR(50),
    Postal_code VARCHAR(50),
    City VARCHAR(100) NOT NULL ,
    Country VARCHAR(100) NOT NULL,
    PRIMARY KEY (AddressID),
    FOREIGN KEY (Address_type) REFERENCES Address_type(Type),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Novick Street', '83', '10184', 'New York City', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Sutteridge Hill', '5', 'P7K', 'Alberton', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (33, 'Postal address', 'Express Avenue', '7', 'F94', 'Bundoran', 'Ireland');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Jackson Avenue', '14', 'KW10', 'Kirkton', 'United Kingdom');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Anhalt Street', '9679', 'T5Y', 'Saint-André-Avellin', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (34, 'Postal address', 'Anderson Crossing', '93', '53285', 'Milwaukee', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (29, 'Postal address', 'Loftsgordon Park', '27', '1120', 'Sydney', 'Australia');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Cascade Street', '4484', '95123', 'San Jose', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Bowman Street', '89885', 'L4P', 'Keswick', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (25, 'Postal address', 'Spenser Avenue', '3743', 'M3H', 'North York', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Mesta Street', '79', '93907', 'Salinas', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (31, 'Postal address', 'Corry Park', '7', 'H9W', 'Beaconsfield', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (30, 'Postal address', 'Blaine Avenue', '31', '43231', 'Columbus', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (35, 'Postal address', 'Oneill Street', '076', '90831', 'Long Beach', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (22, 'Postal address', 'Lakewood Gardens Street', '7899', 'D6W', 'Ballinteer', 'Ireland');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', '6th Street', '326', '55441', 'Minneapolis', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (23, 'Postal address', 'Cottonwood Crossing', '21', 'S7K', 'Kensington', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (20, 'Postal address', 'Lakewood Hill', '7', '93726', 'Fresno', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Donald Street', '602', 'G6B', 'Saint-Bruno-de-Guigues', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (24, 'Postal address', 'Hanson Street', '93', '78726', 'Austin', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (2, 'Postal address', 'Waxwing Street', '54324', '19714', 'Newark', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Fremont Avenue', '415', '70593', 'Lafayette', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Rutledge Street', '53', 'H5B', 'Montréal', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Crest Line Crossing', '2408', 'T8R', 'Morinville', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (4, 'Postal address', 'American Park', '2755', '88525', 'El Paso', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (14, 'Postal address', 'Carey Lane', '4138', 'D6W', 'Templeogue', 'Ireland');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Elka Street', '762', '19172', 'Philadelphia', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (7, 'Postal address', 'Main Street', '1', '48919', 'Lansing', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (6, 'Postal address', 'Hollow Ridge Lane', '0688', '36641', 'Mobile', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Spaight Street', '626', '10155', 'New York City', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Pearson Avenue', '91', '06854', 'Norwalk', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (12, 'Postal address', 'Oak Valley Avenue', '08959', '10060', 'New York City', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'High Crossing Crossing', '03', '90189', 'Los Angeles', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (3, 'Postal address', 'Iowa Street', '2753', 'D17', 'Coolock', 'Ireland');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Coolidge Street', '598', '44505', 'Youngstown', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'Macpherson Avenue', '08856', 'H16', 'Manorhamilton', 'Ireland');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', 'David Creek', '6', '06854', 'Norwalk', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (null, 'Listing address', '7th Street', '9', '48930', 'Lansing', 'United States');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (5, 'Postal address', 'Eagle Crest Park', '8', 'V6M', 'Vulcan', 'Canada');
insert into Address (UserID, Address_type, Street, House_number, Postal_code, City, Country) values (18, 'Postal address', 'Lukken Avenue', '9756', 'T1W', 'Canmore', 'Canada');

CREATE TABLE Listing(
    ListingID INT AUTO_INCREMENT NOT NULL,
    UserID INT NOT NULL,
    AddressID INT NOT NULL,
    Privacy_level VARCHAR(100) NOT NULL,
    Listing_type VARCHAR(100) NOT NULL,
    Number_guests INT,
    Description VARCHAR(1000),
    Amenities VARCHAR (500),
    Total_rooms INT,
    Number_bedrooms INT,
    Number_bathrooms INT,
    PRIMARY KEY (ListingID),
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID),
    FOREIGN KEY (Privacy_level) REFERENCES Privacy_level(Level),
    FOREIGN KEY (Listing_type) REFERENCES Listing_type(Type)
);

insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (1, 1, 'Private room', 'Hotel', 2, 'Enjoy the sea and mountain views from the hotel pool.', 'Wifi, Smoke Alarm, Television, Pool, Parking Spaces, Self Check-in', 2, 1, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (9, 2, 'Shared room', 'House', 4, 'Bring along the kids and the pets to our four-bedroom, three-bathroom home.', 'Wifi, Washer, Dryer, Smoke Alarm, Television, Whirlpool, Self Check-in, Pets allowed', 5, 2, 2);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (10, 4, 'Entire accommodation', 'Flat', 3, 'Enjoy your stay at our bright one-bedroom loft! Our loft is centrally located to many restaurants, shopping, and nightlife.', 'Wifi, Parking Spaces, Self Check-in, Pets allowed', 2, 1, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (2, 5, 'Private room', 'Guest house', 1, 'Wonderful location to spend time with family, friends, or business. ', 'Wifi, Washer, Dryer, Smoke Alarm, Pool, Parking Spaces, Pets allowed', 2, 1, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (7, 8, 'Entire accommodation', 'House', 6, 'Come stay at our private, quiet and simple home is located in the heart downtown.', 'Wifi, Television, Pool, Parking Spaces, Self Check-in,', 6, 3, 2);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (2, 9, 'Entire accommodation', 'House', 8, 'This spacious duplex is perfect for a group of traveling friends or a family looking for a peaceful stay.', 'Wifi, Washer, Dryer, Smoke Alarm, Television, Pool, Parking Spaces, Pets allowed', 10, 5, 3);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (3, 11, 'Entire accommodation', 'Flat', 8, 'My modern 2-bedroom house has everything you need for your trip.', 'Wifi, Smoke Alarm, Television, Pool, Parking Spaces, Self Check-in', 8, 3, 3);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (10, 16, 'Entire accommodation', 'House', 15, 'Unwind at this stunning French Provencal beachside cottage.', 'Wifi, Washer, Dryer, Smoke Alarm, Self Check-in, Pets allowed', 10, 7, 3);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (6, 19, 'Entire accommodation', 'Flat', 5, 'This modern, two-bedroom loft has a great high-rise view of the bustling streets and activities.', 'Wifi, Smoke Alarm, Television, Pool, Parking Spaces, Self Check-in, Pets allowed', 5, 2, 2);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (7, 22, 'Entire accommodation', 'House', 9, 'Explore the vibrant streets with this comfortable house as your base.', 'Washer, Dryer, Television, Pool, Parking Spaces, Self Check-in, Pets allowed', 7, 4, 2);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (9, 23, 'Private room', 'Guest house', 2, 'A lovely space to unwind and relax after a busy day whether it is work or play.', 'Wifi, Washer, Dryer, Smoke Alarm, Television, Pool, Self Check-in', 2, 1, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (5, 24, 'Entire accommodation', 'House', 7, 'This cozy bungalow is an artist’s dream.', 'Wifi, Washer, Dryer, Smoke Alarm, Television, Pool, Parking Spaces', 5, 3, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (7, 27, 'Entire accommodation', 'Flat', 6, 'If you’re looking for something unique that’s off the beaten path, visit our place.', 'Wifi, Washer, Dryer, Smoke Alarm, Television, Pool, Parking Spaces, Self Check-in, Pets allowed', 5, 3, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (19, 30, 'Private room', 'House', 10, 'Sometimes, you just want to live like a local! Come stay in my downstairs bedroom.', 'Wifi, Smoke Alarm', 9, 5, 2);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (12, 31, 'Shared room', 'Hotel', 2, 'Guests will enjoy private bedroom/bathroom as well as shared areas.', 'Wifi, Smoke Alarm, Television, Pool, Parking Spaces, Self Check-in', 2, 1, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (14, 33, 'Entire accommodation', 'House', 4, 'This modern, two-bedroom house is perfect for music lovers.', 'Wifi, Washer, Dryer, Smoke Alarm, Whirlpool, Parking Spaces, Self Check-in', 4, 2, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (13, 35, 'Shared room', 'Guest house', 3, 'Enjoy your stay in this cozy, newly remodeled studio!', 'Wifi, Smoke Alarm, Television, Pool, Self Check-in, Pets allowed', 2, 1, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (17, 36, 'Private room', 'House', 3, 'Brand new, very clean house with a private bathroom, kitchenette and private work space.', 'Wifi, Smoke Alarm, Self Check-in, Pets allowed', 1, 1, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (15, 37, 'Entire accommodation', 'Flat', 2, 'Take a chance on love by staying in this romantic seaside cabin.', 'Washer, Dryer, Smoke Alarm, Television, Self Check-in', 4, 1, 1);
insert into Listing (UserID, AddressID, Privacy_level, Listing_type, Number_guests, Description, Amenities, Total_rooms, Number_bedrooms, Number_bathrooms) values (13, 38, 'Entire accommodation', 'Hotel', 3, 'Experience true urban living in this design-conscious hotel!', 'Wifi, Washer, Dryer, Smoke Alarm, Television, Pool, Parking Spaces, Self Check-in, Pets allowed', 2, 1, 1);

CREATE TABLE Rating_listing(
    Rating_listingID INT AUTO_INCREMENT NOT NULL,
    ListingID INT NOT NULL,
    GuestID INT NOT NULL,
    Number_stars INT,
    Text VARCHAR(1000),
    Date DATE,
    PRIMARY KEY (Rating_listingID),
    FOREIGN KEY (ListingID) REFERENCES Listing(ListingID),
    FOREIGN KEY (GuestID) REFERENCES User(UserID)
);

insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (1, 15, 2, 4, 'All clean, all good!', '2016-05-06');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (2, 12, 6, 5, 'Loved this place. Cannot recommend it enough!!!', '2015-03-07');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (3, 20, 8, 2, 'There were mice in the kitchen. Not a great experience.', '2015-06-14');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (4, 13, 9, 4, 'Amazing place to stay', '2020-11-03');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (5, 6, 19, 4, 'It''is in a noisy neighbourhood, but the place itself is nice.', '2018-04-14');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (6, 15, 18, 4, 'Clean, spacious, perfect for a small getaway!', '2013-04-28');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (7, 17, 7, 5, 'I loved it so much!! Will definitely be back <3', '2015-12-16');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (8, 10, 11, 3, 'It''s ok. Mostly clean, but the building itself is old and cold.', '2013-11-29');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (9, 6, 11, 5, 'Great experience.', '2017-02-01');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (10, 3, 11, 3, 'All went well. The place is ok for a few days.', '2015-09-09');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (11, 16, 20, 2, 'There were stains on the bedsheet and the shower didn''t work...', '2017-08-28');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (12, 12, 6, 5, 'Such a beautiful house in the middle of nature!', '2020-01-04');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (13, 5, 14, 4, 'Great place. I can recommend it.', '2015-11-06');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (14, 8, 19, 2, 'The upstairs neighbours were throwing parties every night. It was extremely loud :(', '2018-12-26');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (15, 6, 16, 5, 'Absolutely perfect!', '2010-10-21');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (16, 19, 10, 5, '5 stars, all went well.', '2015-02-27');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (17, 14, 2, 4, 'A bit oudated, but a great place to stay!', '2018-11-12');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (18, 1, 14, 3, 'It was smaller than anticipated, but ok for a few nights.', '2019-08-06');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (19, 13, 3, 4, 'My family and I loved our stay at this place.', '2011-04-13');
insert into Rating_listing (Rating_listingID, ListingID, GuestID, Number_stars, Text, Date) values (20, 1, 1, 1, 'Dirty place, everything is old and outdated. The listing does not match the pictures. Hated it.', '2011-07-26');

CREATE TABLE Price(
    ListingID INT NOT NULL,
    Price_night DECIMAL (5, 2) NOT NULL,
    Cleaning_fee DECIMAL (5, 2),
    Additional_fee DECIMAL (5, 2),
    FOREIGN KEY (ListingID) REFERENCES Listing(ListingID)
);

insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (1, 78.07, 86.29, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (2, 378.42, 127.74, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (3, 384.35, 131.69, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (4, 161.58, 108.26, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (5, 347.93, null, 99.43);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (6, 255.52, 72.27, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (7, 70.6, 62.69, 66.64);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (8, 331.97, 58.01, 49.58);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (9, 315.58, 126.94, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (10, 354.88, 74.89, 21.57);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (11, 172.76, 130.0, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (12, 417.4, 63.11, 48.56);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (13, 70.76, 59.33, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (14, 171.3, null, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (15, 330.04, null, 24.31);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (16, 65.56, 87.33, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (17, 256.85, 67.14, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (18, 280.1, 88.31, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (19, 309.55, null, null);
insert into Price (ListingID, Price_night, Cleaning_fee, Additional_fee) values (20, 130.1, 112.35, null);

CREATE TABLE Commission(
    ListingID INT NOT NULL,
    Commission_guest DECIMAL (5, 1) NOT NULL,
    Commission_host DECIMAL (5, 1) NOT NULL,
    Income_host DECIMAL (6, 2) NOT NULL,
    FOREIGN KEY (ListingID) REFERENCES Listing(ListingID)
);

insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (1, 7.1, 4.8, 74.32);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (2, 11.5, 4.8, 360.52);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (3, 7.9, 4.8, 365.9);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (4, 9.7, 4.0, 155.11);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (5, 6.0, 3.3, 336.44);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (6, 7.5, 4.9, 242.99);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (7, 6.4, 3.4, 68.19);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (8, 8.3, 3.4, 320.68);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (9, 11.9, 3.6, 304.21);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (10, 7.7, 3.8, 341.39);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (11, 10.8, 3.3, 167.06);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (12, 7.9, 4.9, 396.94);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (13, 7.0, 4.3, 67.71);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (14, 10.5, 3.2, 165.81);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (15, 12.0, 3.8, 317.49);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (16, 9.4, 4.0, 62.93);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (17, 6.1, 3.3, 248.37);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (18, 8.8, 3.3, 270.85);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (19, 9.2, 3.5, 298.71);
insert into Commission (ListingID, Commission_guest, Commission_host, Income_host) values (20, 11.7, 3.4, 125.67);

CREATE TABLE Picture(
    PictureID INT AUTO_INCREMENT NOT NULL ,
    Picture_type VARCHAR(100) NOT NULL ,
    UserID INT,
    ListingID INT,
    File_name VARCHAR(100) NOT NULL ,
    PRIMARY KEY (PictureID),
    FOREIGN KEY (Picture_type) REFERENCES Picture_type(Type),
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (ListingID) REFERENCES Listing(ListingID)
);

insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 1, 'Nibh.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 3, 'LectusSuspendissePotenti.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 4, null, 'Eu.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 5, null, 'Nec.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 10, null, 'Dui.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 14, 'ConsectetuerEget.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 8, null, 'SitAmet.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 16, 'EgetEros.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 20, 'TurpisIntegerAliquet.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 9, 'Praesent.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 17, null, 'AdipiscingMolestieHendrerit.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 5, 'Lacus.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 6, 'EtiamPretiumIaculis.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 8, 'PosuereCubilia.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 3, null, 'UltricesAliquetMaecenas.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 10, null, 'TinciduntEgetTempus.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Listing picture', null, 2, 'Iaculis.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 33, null, 'EuMassa.jpeg');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 29, null, 'NislVenenatisLacinia.png');
insert into Picture (Picture_type, UserID, ListingID, File_name) values ('Profile picture', 37, null, 'JustoAliquamQuis.jpeg');

CREATE TABLE Credit_card(
    Credit_cardID INT AUTO_INCREMENT NOT NULL,
    Creditcard_type VARCHAR(100) NOT NULL,
    Name VARCHAR(150) NOT NULL,
    Number CHAR(16) NOT NULL,
    Expiration_date DATE NOT NULL,
    CVV CHAR(3) NOT NULL,
    PRIMARY KEY (Credit_cardID),
    FOREIGN KEY (Creditcard_type) REFERENCES Creditcard_type(Type)
);

insert into Credit_card (Credit_cardID,Creditcard_type, Name, Number, Expiration_date, CVV) values (1, 'private', 'Terrie Millichip', '4278071008567', '2031-03-01', 868);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (2, 'business', 'Kristel Pluthero', '4041373018308', '2022-07-01', 774);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (3, 'private', 'Matthew Burges', '4311755059976', '2022-03-01', 392);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (4, 'private', 'Reynolds Ballinghall', '4126780331697142', '2026-03-01', 268);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (5, 'private', 'Adan Perrott', '4488665083716', '2023-04-01', 363);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (6, 'private', 'Ricky Hanaford', '4577547124206314', '2026-12-01', 552);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (7, 'private', 'Obie Beausang', '4512006340629294', '2030-08-01', 519);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (8, 'business', 'Violette Tunaclift', '4017957005310291', '2023-06-01', 612);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (9, 'private', 'Missy Worsnap', '4041594718223', '2025-10-01', 988);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (10, 'private', 'Reuven Jeal', '4834806072329984', '2027-02-01', 860);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (11, 'private', 'Nomi Goodrum', '4041373738301534', '2023-10-01', 464);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (12, 'private', 'Frasquito Gozard', '4455037705391', '2026-04-01', 981);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (13, 'private', 'Cymbre Semon', '4041374672789403', '2028-03-01', 139);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (14, 'business', 'Lyndsey O''Caine', '4017955283422887', '2027-01-01', 357);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (15, 'private', 'Heida Peebles', '4041594037129256', '2022-02-01', 958);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (16, 'private', 'Codi Grinsted', '4041599297085718', '2028-02-01', 919);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (17, 'private', 'Timofei Griswaite', '4041370186009', '2028-05-01', 381);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (18, 'private', 'Fianna Somers', '4017959395593130', '2024-09-01', 492);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (19, 'business', 'Chloe Buckwell', '4017952214856', '2024-06-01', 571);
insert into Credit_card (Credit_cardID, Creditcard_type, Name, Number, Expiration_date, CVV) values (20, 'private', 'Milly Crocumbe', '4041591493616313', '2030-02-01', 814);

CREATE TABLE Booking(
    BookingID INT AUTO_INCREMENT NOT NULL,
    ListingID INT NOT NULL,
    GuestID INT NOT NULL,
    Booking_status VARCHAR(100) NOT NULL,
    Payment_status VARCHAR(100) NOT NULL,
    Booking_date DATE NOT NULL,
    Checkin DATE NOT NULL,
    Checkout DATE NOT NULL,
    Number_nights INT NOT NULL,
    Total_price DECIMAL (6, 2) NOT NULL,
    PRIMARY KEY (BookingID),
    FOREIGN KEY (ListingID) REFERENCES Listing(ListingID),
    FOREIGN KEY (GuestID) REFERENCES User(UserID),
    FOREIGN KEY (Booking_status) REFERENCES Booking_status(Status),
    FOREIGN KEY (Payment_status) REFERENCES Payment_status(Status)
);

insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (1, 3, 17, 'booked', 'not paid', '2022-07-05', '2023-02-18', '2023-02-28', 10, 3975.19);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (2, 20, 14, 'completed', 'paid', '2012-04-14', '2012-05-03', '2012-04-10', 7, 1023.05);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (3, 13, 13, 'booked', 'paid', '2022-08-16', '2022-09-22', '2022-09-25', 3, 271.61);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (4, 7, 12, 'cancelled', 'not paid', '2018-09-24', '2018-10-21', '2018-11-10', 19, 1470.73);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (5, 18, 19, 'booked', 'paid', '2022-06-27', '2022-12-21', '2023-01-04', 14, 4009.71);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (6, 2, 6, 'completed', 'paid', '2020-08-16', '2020-08-17', '2020-08-29', 12, 4668.78);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (7, 13, 5, 'booked', 'paid', '2022-08-10', '2022-11-13', '2022-11-19', 6, 482.93);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (8, 5, 16, 'completed', 'paid', '2012-11-08', '2012-11-18', '2012-11-20', 2, 795.29);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (9, 6, 20, 'booked', 'paid', '2022-05-31', '2022-10-25', '2009-10-31', 6, 1605.39);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (10, 19, 5, 'aborted', 'could not be processed', '2015-05-26', '2015-06-13', '2015-06-16', 3, 928.65);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (11, 6, 1, 'booked', 'not paid', '2022-09-18', '2023-02-17', '2023-02-24', 7, 1860.91);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (12, 20, 8, 'completed', 'paid', '2013-06-22', '2013-08-15', '2013-09-15', 30, 4015.35);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (13, 16, 1, 'completed', 'paid', '2012-12-03', '2013-04-07', '2013-05-20', 43, 2906.41);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (14, 8, 7, 'cancelled', 'could not be processed', '2012-10-30', '2012-12-14', '2012-12-26', 12, 4091.23);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (15, 14, 10, 'booked', 'paid', '2022-09-06', '2022-09-30', '2022-10-11', 11, 1884.30);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (16, 8, 3, 'completed', 'paid', '2014-06-15', '2014-10-14', '2014-10-16', 2, 771.53);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (17, 1, 8, 'completed', 'paid', '2015-01-14', '2015-11-08', '2015-11-11', 3, 320.50);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (18, 15, 1, 'booked', 'not paid', '2022-09-05', '2023-02-07', '2023-02-25', 18, 5965.03);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (19, 10, 8, 'booked', 'not paid', '2022-09-10', '2022-11-23', '2022-11-28', 5, 1870.86);
insert into Booking (BookingID, ListingID, GuestID, Booking_status, Payment_status, Booking_date, Checkin, Checkout, Number_nights, Total_price) values (20, 1, 2, 'completed', 'paid', '2016-01-19', '2016-03-01', '2016-03-20', 19, 1569.62);

SELECT * FROM User WHERE Gender='female' AND Last_name LIKE 'B%';
SELECT * FROM Host WHERE Superhost=true;
SELECT User.UserID, User.Last_name, User.First_name, Credit_card.Number AS Card_number, Credit_card.Name AS Cardholder, Credit_card.CVV,
       Credit_card.Expiration_date FROM Guest JOIN User ON Guest.UserID = User.UserID JOIN Credit_card ON Guest.Credit_cardID=Credit_card.Credit_cardID;
SELECT * FROM Rating_guest WHERE GuestID='26';
SELECT CONCAT (User.First_name, ' ', User.Last_name) AS Sender, Message.Text, Message.Date FROM Message JOIN User ON Message.SenderID = User.UserID;
SELECT Street, House_number, Postal_code, City FROM Address WHERE Country='United States' ORDER BY City DESC;
SELECT ListingID, Privacy_level, Amenities, Total_rooms FROM Listing WHERE NOT Privacy_level='Shared room' AND Amenities LIKE '%Pool%' ORDER BY Total_rooms;
SELECT Rating_listingID, Number_stars, Text, Date FROM Rating_listing WHERE Number_stars >= 3 AND Text LIKE '%clean%';
SELECT AVG(Price_night) AS Average_price FROM Price;
SELECT Commission.ListingID, Commission.Commission_host, Price.Price_night FROM Commission JOIN Price ON Commission.ListingID=Price.ListingID;
SELECT U.UserID, Picture.File_name, U.First_name, U.Last_name, U.Email, U.Description FROM Picture
    JOIN User U on Picture.UserID = U.UserID WHERE Picture_type='Profile picture';
SELECT Credit_cardID, Name, Number, Expiration_date FROM Credit_card WHERE Creditcard_type='private' AND Expiration_date < '2023-12-01';
SELECT Booking.BookingID, Booking.Number_nights, Booking.Total_price, User.First_name, User.Last_name FROM Booking JOIN User ON Booking.GuestID=User.UserID