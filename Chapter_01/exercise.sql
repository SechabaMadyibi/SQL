CREATE DATABASE Zoo;

CREATE TABLE animals(
    id bigserial,
    NameofAnimal varchar(50)
);

CREATE TABLE  animalSpecification (
    id bigserial,
    NameofAnimal varchar(50),
    animalType varchar(50),
    TotalNumber numeric
)

INSERT INTO animalSpecification(NameofAnimal, animalType, TotalNumber)
VALUES ('Lion' 'Mammal', 10),
('Crocodile', 'Reptile', 5),
('Parrot', 'Bird', 7),
('Giraffe', 'Mammal', 9),
('Tiger', 'Mammal', 8 );
