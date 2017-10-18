CREATE DATABASE SmartCity;

CREATE TABLE City (
    CITY_ID INT AUTO_INCREMENT,
    CITY_NAME VARCHAR(50),
    PRIMARY KEY (CITY_ID)
);

CREATE TABLE UserType (
    TYPE_ID INT AUTO_INCREMENT,
    TYPE_NAME VARCHAR(20),
    PRIMARY KEY (TYPE_ID)
);

CREATE TABLE Users (
	USERNAME VARCHAR(20),
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    PASSWORD VARCHAR(20),
    EMAIL VARCHAR(50),
    USER_TYPE INT,
    CITY_ID INT,
    PRIMARY KEY (USERNAME),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (USER_TYPE) REFERENCES UserType(TYPE_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Park (
	PARK_ID INT AUTO_INCREMENT,
    CITY_ID INT,
    PARK_NAME VARCHAR(50),
    STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    PRIMARY KEY (PARK_ID),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Restaurant (
    RESTAURANT_ID INT AUTO_INCREMENT,
    CITY_ID INT,
    RESTAURANT_NAME VARCHAR(50),
    CUISINE VARCHAR(20),
	STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    EMAIL VARCHAR(50),
	PHONE_NUMBER INT,
    PRIMARY KEY (RESTAURANT_ID),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Libraries (
    LIBRARY_ID INT AUTO_INCREMENT,
    CITY_ID INT,
	STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    EMAIL VARCHAR(50),
	PHONE_NUMBER INT,
    PRIMARY KEY (LIBRARY_ID),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Malls (
    MALL_ID INT AUTO_INCREMENT,
    CITY_ID INT,
	STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    EMAIL VARCHAR(50),
	PHONE_NUMBER INT,
    PRIMARY KEY (MALL_ID),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IndustryType (
	INDUSTRY_ID INT AUTO_INCREMENT,
    INDUSTRY_NAME VARCHAR(50),
    PRIMARY KEY (INDUSTRY_ID)
);

CREATE TABLE Industry (
    ID INT AUTO_INCREMENT,
    CITY_ID INT,
    BUSINESS_NAME VARCHAR(50),
    INDUSTRY_TYPE INT,
	STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    EMAIL VARCHAR(50),
	PHONE_NUMBER INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (INDUSTRY_TYPE) REFERENCES IndustryType(INDUSTRY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE Zoo (
    ZOO_ID INT AUTO_INCREMENT,
    CITY_ID INT,
    ZOO_NAME VARCHAR(50),
	STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    EMAIL VARCHAR(50),
	PHONE_NUMBER INT,
    PRIMARY KEY (ZOO_ID),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Museums (
	MUSEUM_ID INT AUTO_INCREMENT,
    CITY_ID INT,
    MUSEUM_NAME VARCHAR(50),
	STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    EMAIL VARCHAR(50),
	PHONE_NUMBER INT,
    PRIMARY KEY (MUSEUM_ID),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Colleges (
    COLLEGE_ID INT AUTO_INCREMENT,
    CITY_ID INT,
    COLLEGE_NAME VARCHAR(50),
	STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    PRIMARY KEY (COLLEGE_ID),
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Departments (
	ID INT AUTO_INCREMENT,
    COLLEGE_ID INT,
    DEPARTMENT_NAME VARCHAR(50),
    EMAIL VARCHAR(50),
    PHONE_NUMBER INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (COLLEGE_ID) REFERENCES Colleges(COLLEGE_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE HOTEL (
    HOTEL_ID INT,
    CITY_ID INT,
    HOTEL_NAME VARCHAR(50),
    STREET VARCHAR(50),
    SUBURB VARCHAR(50),
    POSTCODE INT,
    EMAIL VARCHAR(50),
    PHONE_NUMBER INT,
    PRIMARY KEY HOTEL_ID,
    FOREIGN KEY (CITY_ID) REFERENCES City(CITY_ID) ON DELETE RESTRICT ON UPDATE CASCADE
);
