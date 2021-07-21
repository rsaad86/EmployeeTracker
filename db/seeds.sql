INSERT INTO departments(name) VALUES ('Sales');
INSERT INTO departments(name) VALUES ('Finance');
INSERT INTO departments(name) VALUES ('Research and Development');
INSERT INTO departments(name) VALUES ('Manufacturing');
INSERT INTO departments(name) VALUES ('Human Resources');
INSERT INTO departments(name) VALUES ('Customer Support');
INSERT INTO departments(name) VALUES ('Executive');
INSERT INTO departments(name) VALUES ('Facilities');
INSERT INTO departments(name) VALUES ('Information Technology');
INSERT INTO departments(name) VALUES ('Operations');
INSERT INTO departments(name) VALUES ('Consulting');

 

INSERT INTO roles(title, salary, departments_id) VALUES ('Director of Manufacturing', 83081, 11);
INSERT INTO roles(title, salary, departments_id) VALUES ('Technical Specialist', 87209, 9);
INSERT INTO roles(title, salary, departments_id) VALUES ('Lead Engineer', 69918, 5);
INSERT INTO roles(title, salary, departments_id) VALUES ('Director of Customer Support', 55083, 3);
INSERT INTO roles(title, salary, departments_id) VALUES ('Communication Engineer', 36860, 3);
INSERT INTO roles(title, salary, departments_id) VALUES ('Director of Information Techno', 48563, 2);
INSERT INTO roles(title, salary, departments_id) VALUES ('Product Manager', 82747, 9);
INSERT INTO roles(title, salary, departments_id) VALUES ('Developer/Programmer', 96432, 3);
INSERT INTO roles(title, salary, departments_id) VALUES ('Development Manager', 103936, 8);
INSERT INTO roles(title, salary, departments_id) VALUES ('Technical Manager', 91570, 6);
INSERT INTO roles(title, salary, departments_id) VALUES ('Communication Analyst', 106012, 6);
INSERT INTO roles(title, salary, departments_id) VALUES ('Secretary', 76510, 11);
INSERT INTO roles(title, salary, departments_id) VALUES ('Vice President', 88729, 7);
INSERT INTO roles(title, salary, departments_id) VALUES ('Business Analyst', 98389, 9);
INSERT INTO roles(title, salary, departments_id) VALUES ('Technician', 55952, 4);
INSERT INTO roles(title, salary, departments_id) VALUES ('Specialist', 80013, 6);
INSERT INTO roles(title, salary, departments_id) VALUES ('Chief Technology Officer', 63141, 8);
INSERT INTO roles(title, salary, departments_id) VALUES ('Business Coordinator', 67299, 3);
INSERT INTO roles(title, salary, departments_id) VALUES ('Training Manager', 104564, 11);
INSERT INTO roles(title, salary, departments_id) VALUES ('Application Engineer', 119996, 10);

 

INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Abraham', 'Mckee', 2, null);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Reinaldo', 'Eubanks', 13, null);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Elijah', 'Hand', 11, null);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Tanner', 'Abney', 11, null);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Jewel', 'Evans', 12, null);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Alfonso', 'Bowens', 9, null);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Jason', 'Stanley', 8, null);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Rico', 'Handley', 10, 1);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Yasmine', 'Everett', 3, 2);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Darcey', 'Lowry', 2, 1);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Rodney', 'Wicks', 18, 5);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Latoya', 'Abraham', 1, 4);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Jesus', 'Pelletier', 4, 3);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Olimpia', 'Bower', 16, 3);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Aurelia', 'Hutcheson', 1, 2);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Freeman', 'Stanton', 17, 7);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Brent', 'Handy', 10, 6);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Anglea', 'Everhart', 2, 8);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Desirae', 'Abrams', 18, 8);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES ('Cleo', 'Bowers', 11, 7);