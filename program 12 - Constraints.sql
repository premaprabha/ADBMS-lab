CREATE TABLE department1 (
    dept_id NUMBER,
    dept_name VARCHAR2(30)
);

CREATE TABLE student1 (
    student1_id NUMBER,
    student1_name VARCHAR2(30),
    email VARCHAR2(50),
    age NUMBER,
    dept_id NUMBER
);

-- INSERT VALUES

INSERT INTO department1 VALUES (101, 'Computer Science');
INSERT INTO department1 VALUES (102, 'Commerce');

INSERT INTO student1 VALUES (1, 'Priya', 'priya@gmail.com', 20, 101);
INSERT INTO student1 VALUES (2, 'Arun', 'arun@gmail.com', 21, 102);

COMMIT;

-- PRIMARY KEY

ALTER TABLE student1
ADD CONSTRAINT pk_student1
PRIMARY KEY (student_id);

-- UNIQUE

ALTER TABLE student1
ADD CONSTRAINT uq_student1_email
UNIQUE (email);

-- FOREIGN KEY

ALTER TABLE student1
ADD CONSTRAINT fk_student1_dept
FOREIGN KEY (dept_id)
REFERENCES department1(dept_id);

-- CHECK

ALTER TABLE student1
ADD CONSTRAINT chk_student1_age
CHECK (age >= 18);

-- SELECT

SELECT * FROM student1;
