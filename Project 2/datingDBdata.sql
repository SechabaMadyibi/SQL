INSERT INTO profession (profession)
VALUES ('Doctor'),
('Accountant'),
('Sales Rep'),
('Lawyer'),
('Software Developer'),
('Chef'),
('Teacher');

INSERT INTO zip_code(zip_code,province, city)
VALUES 
(1239,'Eastern Cape','Grahamstown'),
(5543,'Eastern Cape','East London'),
(2765,' Free State','Bloemfontein'),
(2354,' Free State','Welkom'),
(4532,'Gauteng','Pretoria'),
(4598,'Gauteng','Joburg'),
(3541,'KwaZulu-Natal','Durban'),
(3554,'KwaZulu-Natal','Pietermaritzburg'),
(2330,'Limpopo','Polokwane'),
(2365,'Limpopo','Tzaneen'),
(1133,'Northern Cape','Kimberly'),
(1154,'Northern Cape','Kuruman'),
(2235,'North West','Britz'),
(2290,'North West','Rustenburg'),
(4366,'Mpumalanga','Nelspruit'),
(4307,'Mpumalanga','White River'),
(7612,'Western Cape','Captetown'),
(7632,'Western Cape','Knysna');

INSERT INTO interests (interest)
VALUES
('Sport'),
('Painting'),
('Music'),
('Movies'),
('Travel'),
('Camping'),
('Reading');

INSERT INTO seeking (seeking)
VALUES
('Friendship'),
('Relationship'),
('Date');


INSERT INTO status (status)
VALUES 
('Single'),
('In a relationship');


INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id )
('Jones','Nancy',082 643 5032 ,'nancy@gmail.com','male',1988-04-23, 4, 1239, 1 ), 
    ('Smith', 'Lee',083 203 7348,'leee@yahoo.com',2000-07-11, 3, 5543, 2 ),
    ('Nguyen', 'Soo',084 433 7424 ,'soo@gmail.com','female',1994-08-13, 1,2765,1 ),
    ('Smith', 'Shaun',084 239 7124 , 'shaun@gmail.com','male',1994-09-03, 1,4598,1),
    ('North', 'Josh',082 520 9289,'j@gmail.com','male',2002-07-11, 7, 4532, 2 ),
    ('White','Sam',082 551 1543,'sam@gmail.com','male',2003-05-17, 2, 5543, 2),
    ('Freeman','Suzzette',082 408 3415 ,'tfreeman@gmail.com','female',1994-03-13, 1,4598,1);
    ('Doyle', 'Esmeralda ', 032223565,' dolyle@gmail.com','male',1978-04-27, 4, 4307, 1 ), 
    ('Roy','Kaden',082 475 0780,'rk@yahoo.com','male', 2000-07-11, 3, 7612, 2 ),
    ('Lola','Molina',084 420 6716,'molina@gmail.com','female',1995-08-13, 1,7632,1 ),
    ('Combs', 'Miranda',084 158 0460 , 'miranda@gmail.com','male',1997-09-09, 1,3541,1),
    ('Halo', 'Farrell',082 995 4673 ,'halo@gmail.com','male',2001-09-11, 7, 2235, 2 ),
    ('Hunt', 'Ruben',084 665 7249 ,'ruben@gmail.com','male',2000-07-10, 5, 5543, 2),
    ('Randall', 'Ari', 083 654 7609 ,'ari@gmail.com','female',1994-03-13, 6,1133,1)
    ('Vaughan', 'Keith', 084 757 2053 ,'keith@gmail.com','female',1994-03-13, 3,2330,1);
