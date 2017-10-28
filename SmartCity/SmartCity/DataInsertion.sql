INSERT INTO City VALUES (
    (1, 'Brisbane'),
    (2, 'Sydney'),
    (3, 'Melbourne'),
    (4, 'Hobart'),
    (5, 'Adelaide'),
    (6, 'Perth'),
    (7, 'Darwin'),
    (8, 'Gold Coast'),
    (9, 'Sunshine Coast')
);

INSERT INTO Colleges VALUES (
    (1, 1, 'Queensland University of Technology', 
    '2 George Street', 'Brisbane', 4000),
    (2, 1, 'University of Queensland', Null, 'St Lucia', 4072),
    (3, 1, 'Griffith University', '170 Kessels Road', 'Nathan', 4111)
);

INSERT INTO Departments VALUES (
    (1, 1, 'Science and Engineering Faculty', 
    'sef.enquiry@qut.edu.au', 3138 8822),
    (2, 2, 'Faculty of Science', 'science.enquiries@uq.edu.au', 3365 1888),
    (3, 3, 'Griffith School of Environment', 
    'environment-nathan@griffith.edu.au', 3735 7948)
);

INSERT INTO IndustryType VALUES (
    (1, 'Software'),
    (2, 'Mining'),
    (3, 'Logistics')
);

INSERT INTO Industry VALUES (
    (1, 1, 'SAP', 1, '20/140 Creek Street', 'Brisbane', 
    4000, 'brisbane.enquiry@sap.com', 3259 9500),
    (2, 1, 'Oracle', 1, '16/340 Adelaide Street', 'Brisbane', 
    4000, 'contact@oracle.com', 3010 1002),
    (3, 1, 'Rio Tinto', 2, '123 Albert Street', 'Brisbane', 
    4000, 'contact@riotinto.com', 3001 0000),
    (4, 1, 'Santos', 2, '32 Turbot Street', 'Brisbane',
    4000, 'contact@santos.com', 3838 3000),
    (5, 1, 'DHL', 3, '171 Roma Street', 'Brisbane',
    4000, 'contact@dhl.com', 13 14 06),
    (6, 1, 'Toll', 3, '16 Terrace Place', 'Murrarie',
    4172, 'contact@toll.com.au', 13 14 15)
);

INSERT INTO Zoo VALUES (
    (1, 1, 'Lone Pine Koala Sanctuary', '708 Jesmond Road', 
    'Fig Tree Pocket', 4069, 'service@koala.net', 3378 1366),
    (2, 9, 'Australia Zoo', '1638 Steve Irwin Way', 'Beerwah',
    4519, 'contact@australiazoo.com.au', 5436 2000),
    (3, 8, 'Paradise Country', 'Production Drive', 'Oxenford',
    4210, 'contact@paradisecountry.com.au', 13 33 86),
    (4, 8, 'Currumbin Wildlife Sanctuary', '28 Tomewin Street', 
    'Currumbin', 4223, 'enquiries@cws.org.au', 5534 1266)
);

INSERT INTO Park VALUES (
    (1, 1, 'Kalinga Park', '31 Kalinga Street', 'Clayfield', 4011),
    (2, 1, 'Lower Moora Park', '65a Park Parade', 'Shorncliffe', 4017),
    (3, 1, 'Robelle Domain', '155 Southern Cross Circuit', 
    'Springfield Central', 4300),
    (4, 1, 'Hidden World', '411 Roghan Road', 'Fitzgibbon', 4018),
    (5, 1, 'Rocks Riverside Park', '5 Counihan Road', 
    'Seventeen Mile Rocks', 4073),
    (6, 1, 'Habitat Drive Park', '45 Habitat Drive', 'Wakerley', 4154)
);

INSERT INTO Restaurant VALUES (
    (1, 1, 'Thai Naramit', 'Thai', '4/5 Zilman Road	Hendra', 4011, 'bookingthainaramit@gmail.com', 3268 5146),
    (2, 1, 'El & Dora', 'Italian', '8/31 Alexandra Road	Ascot', 4007, 'info@elanddora.com', 3262 2242),
    (3, 1, 'Ze Pickle', 'Burgers', '1 Prospect Street', 'Fortitude Valley', 4006, 'contact@zepickle.com.au', 3252 0186),
    (4, 1, 'Vintaged Bar + Grill', 'Australian', '6/190 Elizabeth Street', 'Brisbane', 4000, 'eat@vintagedbarandgrill.com', 3231 3265),
    (5, 1, 'Boroughs of New York Pizza', 'Pizza', '1151 Creek Road', 'Carindale', 4152, 'contact@sampleemail.com', 1300 692 74992)
);

INSERT INTO Libraries VALUES (
    (1, 1, 'Carindale Library', '1151 Creek Road', 'Carindale', 4152, NULL, 3407 1490),
    (2, 1, 'Annerley Library', '450 Ipswich Road', 'Annerley', 4103, NULL, 3403 1735),
    (3, 1, 'Banyo Library', '284 St Vincents Road', 'Banyo', 4014, NULL, 3403 2200),
    (4, 1, 'Toowong Library', '9 Sherwood Road', 'Toowong', 4066, NULL, 3403 2590),
    (5, 1, 'Wynnum Library', '145 Florence Street', 'Wynnum Central', 4178, NULL, 3403 2199),
    (6, 1, 'West End Library', '178-180 Boundary Street', 'West End', 4101, NULL, 3403 8620)
);

INSERT INTO Malls VALUES (
    (1, 1, 'Westfield Carindale', '1151 Creek Road	Carindale', 4152, 'carindale@scentregroup.com', 3120 5400),
    (2, 1, 'Westfield Garden City', 'Logan & Kessels Road', 'Upper Mount Gravatt', 4122, 'gardencity@scentregroup.com', 3135 5450),
    (3, 1, 'Toombul Shopping Centre', '1015 Sandgate Road', 'Toombul', 4012, 'toombul@mirvac.com', 3266 7122),
    (4, 1, 'Toowong Village', '9 Sherwood Road', 'Toowong', 4066, 'toowongvillage@retailfirst.com.au', 3870 7177),
    (5, 1, 'MacArthur Central', '255 Queen Street', 'Brisbane', 4000, 'info@macarthurcentral.com', 3007 2300)
);

INSERT INTO Museums VALUES (
    (1, 1, 'Gallery of Modern Art', 'Stanley Place', 'South Brisbane', 4101, 'gallery@qagoma.qld.gov.au', 3840 7303),
    (2, 1, 'Queensland Art Gallery', 'Stanley Place', 'South Brisbane', 4101, 'gallery@qagoma.qld.gov.au', 3840 7303),
    (3, 1, 'Museum of Brisbane', '64 Adelaide Street', 'Brisbane', 4000, 'info@museumofbrisbane.com.au', 3339 0800),
    (4, 1, 'Queensland Museum', 'Cnr Grey and Melbourne Streets', 'South Brisbane', 4101, 'info@qm.qld.gov.au', 3846 1918)
);

INSERT INTO Hotel VALUES (
    (1, 1, 'Prince of Wales Hotel', '1154 Sandgate Road', 'Nundah', 4012, 'prince.of.wales.hotel@alhgroup.com.au', 3266 8077),
    (2, 1, 'ibis budget Brisbane Airport', '18 Navigator Place', 'Hendra', 4011, 'h3512@accor.com', 3868 3457),
    (3, 1, 'Hilton Brisbane', '190 Elizabeth Street', 'Brisbane', 4000, 'brisbane.info@hilton.com', 3234 2000),
    (4, 1, 'Spicers Balfour Hotel', '37 Balfour Street', 'New Farm', 4005, 'reception.balfour@spicersretreats.com', 1300 597 540)
);
