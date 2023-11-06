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
VALUES
    ('Jones','Nancy',0826435032,'nancy@gmail.com','male','1988-04-23', 4, 1239, 1 ), 
    ('Smith','Lee',0832037348,'leee@yahoo.com','male', '2000-07-11', 3, 5543, 2 ),
    ('Nguyen', 'Soo',0844337424 ,'soo@gmail.com','female','1994-08-13', 1,2765,1 ),
    ('Smith', 'Shaun',0842397124 , 'shaun@gmail.com','male','1994-09-03', 1,4598,1),
    ('North', 'Josh',0825209289,'j@gmail.com','male','2002-07-11', 7, 4532, 2 ),
    ('White','Sam',0825511543,'sam@gmail.com','male','2003-05-17', 2, 5543, 2),
    ('Freeman','Suzzette',0824083415 ,'tfreeman@gmail.com','female','1994-03-13', 1,4598,1),
    ('Doyle', 'Esmeralda ', 032223565,' dolyle@gmail.com','male','1978-04-27', 4, 4307, 1 ), 
    ('Roy','Kaden',0824750780,'rk@yahoo.com','male', '2000-07-11', 3, 7612, 2 ),
    ('Lola','Molina',0844206716,'molina@gmail.com','female','1995-08-13', 1,7632,1 ),
    ('Combs', 'Miranda',0841580460 , 'miranda@gmail.com','male','1997-09-09', 1,3541,1),
    ('Halo', 'Farrell',0829954673 ,'halo@gmail.com','male','2001-09-11', 7, 2235, 2 ),
    ('Hunt', 'Ruben',0846657249 ,'ruben@gmail.com','male','2000-07-10', 5, 5543, 2),
    ('Randall', 'Ari', 0836547609 ,'ari@gmail.com','female','1994-03-13', 6,1133,1),
    ('Vaughan', 'Keith', 0847572053 ,'keith@gmail.com','female','1994-03-13', 3,2330,1);


INSERT INTO contact_interest (contact_id,interest_id,interest_id)
VALUES 
(1,3),
(2,6),
(3,5),
(4,4),
(5,5),
(6,6),
(7,1),
(8,5),
(9,2),
(10,1),
(11,1),
(12,2),
(13,4),
(14,1),
(15,2);

INSERT INTO contact_seeking(contact_id, seeking_id)
VALUES 
(1,3),
(2,2),
(3,2),
(4,1),
(5,1),
(6,1),
(7,1),
(8,2),
(9,2),
(10,1),
(11,1),
(12,2),
(13,3),
(14,3),
(15,2);

CREATE OR REPLACE VIEW seekingTable AS
Select contact_id, seeking
FROM contact_seeking 
LEFT JOIN seeking  ON contact_seeking.seeking_id = seeking.seeking_id

CREATE OR REPLACE VIEW interestTable AS
Select ci.contact_id, i.interest
FROM contact_interest ci 
LEFT JOIN interests i ON i.interest_id = ci.interest_id

SELECT mycont.contact_id, mycont.last_name, mycont.first_name, mycont.phone, mycont.email, 
mycont.gender,mycont.birthday, st.seeking, it.interest,
prof.profession, zip.city, zip.province, sta.status
FROM my_contacts mycont LEFT JOIN profession prof  ON mycont.prof_id =prof.prof_id
LEFT JOIN zip_code zip ON mycont.zip_code = zip.zip_code
LEFT JOIN status sta ON mycont.status_id = sta.status_id
LEFT JOIN seekingTable st ON mycont.contact_id =st.contact_id
LEFT JOIN interestTable it ON mycont.contact_id =  it.contact_id



 



