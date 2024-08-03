INSERT INTO employee (SSN, FName, Minit, LName, BDate, Address, Sex, Salary, SuperSSN, DNO) VALUES ('123456789', 'John', 'B', 'Smtih', to_date('1955-01-09','yyyy-mm-dd'), '731 Fondren,Houston,TX', 'M', 30000, NULL, NULL);
INSERT INTO employee (SSN, FName, Minit, LName, BDate, Address, Sex, Salary, SuperSSN, DNO) VALUES ('333445555', 'Franklin', 'T', 'Wong',  to_date('1945-12-08','yyyy-mm-dd'), '638 Voss,Houston,TX', 'M', 40000, NULL, NULL);
INSERT INTO employee (SSN, FName, Minit, LName, BDate, Address, Sex, Salary, SuperSSN, DNO) VALUES ('999887777', 'Alicia', 'J', 'Zelaya',  to_date('1958-07-19','yyyy-mm-dd'), '3321 Castle,Spring,TX', 'F', 25000, NULL, NULL);
INSERT INTO employee (SSN, FName, Minit, LName, BDate, Address, Sex, Salary, SuperSSN, DNO) VALUES ('987654321', 'Jennifer', 'S', 'Walliance',  to_date('1931-06-20','yyyy-mm-dd') ,'291 Berry,Bellaire,TX', 'F', 43000, NULL, NULL);
INSERT INTO employee (SSN, FName, Minit, LName, BDate, Address, Sex, Salary, SuperSSN, DNO) VALUES ('666884444', 'Ramesh', 'K', 'Narayan',  to_date('1945-12-08','yyyy-mm-dd'), '975 Fire Oak,Humble,TX', 'M', 38000, NULL, NULL);
INSERT INTO employee (SSN, FName, Minit, LName, BDate, Address, Sex, Salary, SuperSSN, DNO) VALUES ('453453453', 'Joyce', 'A', 'English',  to_date('1962-07-31','yyyy-mm-dd'), '5631 Rice,Houston,TX', 'F', 25000, NULL, NULL);
INSERT INTO employee (SSN, FName, Minit, LName, BDate, Address, Sex, Salary, SuperSSN, DNO) VALUES ('987987987', 'Ahmad', 'V', 'Jabbar',  to_date('1959-03-29','yyyy-mm-dd'), '980 Dallas,Houston,TX', 'M', 25000, NULL, NULL);
INSERT INTO employee (SSN, FName, Minit, LName, BDate, Address, Sex, Salary, SuperSSN, DNO) VALUES ('888665555', 'James', 'E', 'Borg', to_date('1927-11-10','yyyy-mm-dd') , '450 Stone,Houston,TX', 'M', 55000, NULL, NULL);


INSERT INTO department (DNumber, DName, MGRSSN, MGRStartDate) VALUES (1, 'HeadQuaters', '888665555', to_date('1971-06-19','yyyy-mm-dd') );
INSERT INTO department  VALUES (4, 'Administration', '987654321', to_date('1985-01-01','yyyy-mm-dd') );
INSERT INTO department  VALUES (5, 'Research', '333445555', to_date('1978-05-22','yyyy-mm-dd') );


UPDATE employee SET SuperSSN= '333445555', DNO= 5 WHERE SSN='666884444';
UPDATE employee SET DNO= 1 WHERE SSN='888665555';
UPDATE employee SET SuperSSN= '888665555', DNO= 4 WHERE SSN='987654321';
UPDATE employee SET SuperSSN= '987654321', DNO= 4 WHERE SSN='987987987';
UPDATE employee SET SuperSSN= '987654321', DNO= 4 WHERE SSN='999887777';
UPDATE  employee  SET  SuperSSN ='333445555',  DNO =5 WHERE  SSN ='123456789';
UPDATE  employee  SET  SuperSSN ='888665555',  DNO =5 WHERE  SSN ='333445555';
UPDATE  employee  SET  SuperSSN ='333445555',  DNO =5 WHERE  SSN ='453453453';

INSERT INTO dept_locations (DNumber, DLocation) VALUES (1, 'Houston');
INSERT INTO dept_locations (DNumber, DLocation) VALUES (4, 'Stafford');
INSERT INTO dept_locations (DNumber, DLocation) VALUES (5, 'Bellaire');
INSERT INTO dept_locations (DNumber, DLocation) VALUES (5, 'Sugarland');
INSERT INTO dept_locations (DNumber, DLocation) VALUES (5, 'Houston');


INSERT INTO project (PNumber, PName, Plocation, DNum) VALUES (1, 'Project X', 'Bellaire', 5);
INSERT INTO project (PNumber, PName, Plocation, DNum) VALUES (2, 'Product Y', 'Sugarland', 5);
INSERT INTO project (PNumber, PName, Plocation, DNum) VALUES (3, 'Product Z', 'Houston', 5);
INSERT INTO project (PNumber, PName, Plocation, DNum) VALUES (10, 'Computerization', 'Stafford', 4);
INSERT INTO project (PNumber, PName, Plocation, DNum) VALUES (20, 'Reorganization', 'Houston', 1);
INSERT INTO project (PNumber, PName, Plocation, DNum) VALUES (30, 'NewBenefits', 'Stafford', 4);

INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('123456789', 1, 32.5);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('123456789', 2, 7.5);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('666884444', 3, 40);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('453453453', 1, 20);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('453453453', 2, 20);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('333445555', 2, 10);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('333445555', 3, 10);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('333445555', 10, 10);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('333445555', 20, 10);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('999887777', 30, 30);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('999887777', 10, 10);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('987987987', 10, 35);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('987987987', 30, 5);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('987654321', 30, 20);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('987654321', 20, 15);
INSERT INTO works_on (ESSN, PNO, HOURS) VALUES ('888665555', 20, NULL);

INSERT INTO dependent (ESSN, DEPENDENT_NAME, Sex, BDate, Relationship) VALUES ('333445555', 'Alice', 'F', to_date('1976-04-05','yyyy-mm-dd'), 'Daughter');
INSERT INTO dependent (ESSN, DEPENDENT_NAME, Sex, BDate, Relationship) VALUES ('333445555', 'Theodore', 'M', to_date('1973-10-25','yyyy-mm-dd'), 'SON');
INSERT INTO dependent (ESSN, DEPENDENT_NAME, Sex, BDate, Relationship) VALUES ('333445555', 'Joy', 'F', to_date('1948-05-03','yyyy-mm-dd'), 'Spouse');
INSERT INTO dependent (ESSN, DEPENDENT_NAME, Sex, BDate, Relationship) VALUES ('987654321', 'Abner', 'M', to_date('1932-02-29','yyyy-mm-dd'), 'Spouse');
INSERT INTO dependent (ESSN, DEPENDENT_NAME, Sex, BDate, Relationship) VALUES ('123456789', 'Micheal', 'M',to_date('1978-01-01','yyyy-mm-dd') , 'SON');
INSERT INTO dependent (ESSN, DEPENDENT_NAME, Sex, BDate, Relationship) VALUES ('123456789', 'Alice', 'F', to_date('1978-12-31','yyyy-mm-dd'), 'Daughter');
INSERT INTO dependent (ESSN, DEPENDENT_NAME, Sex, BDate, Relationship) VALUES ('123456789', 'Elizabeth', 'F', to_date('1957-05-05','yyyy-mm-dd'), 'Spouse');
