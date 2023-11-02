INSERT INTO department_project (depart_id, depart_name, depart_city)
VALUES
(1,'Finance', 'Atlanta'),
(2,'IT', 'Boston'),
(3,'Marketing','LA'),
(4,'Sales', 'New York');



INSERT INTO roles(role_id, role)
values (1,'Administrator'),
(2,'Product Maganger'),
(3,'Accountant'),
(4,'Sales Rep');



INSERT INTO employees_project (emp_id, first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id)
VALUES
    (1,'Nancy', 'Jones', 'male','MILO FRITZ AVENUE', 'nancy@gmail.com',1,2,1,3), 
    (2,'Lee', 'Smith', 'female', 'Mitchell street', 'leee@yahoo.com', 1,3,3,2 ),
    (3,'Soo', 'Nguyen','female', 'lilian ngoyi street','soo@gmail.com',3, 1, 1, 2),
    (4,'Shaun', 'Smith','male', 'lower street', 'shaun@gmail.com', 2,2,4,4),
    (5,'Josh', 'North','male', 'upper street', 'j@gmail.com', 1,1,4,2),
    (6,'Sam', 'White','male', 'M street', 'sam@gmail.com', 2,2,4,3),
    (7,'Suzzette', 'Freeman','female', 'K Street', 'tfreeman@gmail.com',4, 4, 3, 3);



INSERT INTO Overtime_hours(overtime_id, overtime_hours)
VALUES(1, '0 - 2 hours'),
(2, '2 - 4 hours'),
(3, '4 -6 hours'),
(4, '6 - 8 hours'),
(5, '8 - 10 hours');

INSERT INTO salaries (salary_id, salary_pa)
values
(1, 'Less than 30 000'),
(2, ' 30 000 - 60 000'),
(3, ' 60 000 - 90 000'),
(4, '90 000 -120 000'),
(5, '120 000 or more');




