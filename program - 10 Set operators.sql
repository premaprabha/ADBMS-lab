CREATE TABLE student1 (
    id NUMBER,
    name VARCHAR2(20)
);

CREATE TABLE student2 (
    id NUMBER,
    name VARCHAR2(20)
);

INSERT INTO student1 VALUES (1, 'Ravi');
INSERT INTO student1 VALUES (2, 'Priya');
INSERT INTO student1 VALUES (3, 'Kumar');
INSERT INTO student1 VALUES (4, 'Anu');
INSERT INTO student1 VALUES (5, 'Divya');

INSERT INTO student2 VALUES (3, 'Kumar');
INSERT INTO student2 VALUES (4, 'Anu');
INSERT INTO student2 VALUES (5, 'Divya');
INSERT INTO student2 VALUES (6, 'Arun');
INSERT INTO student2 VALUES (7, 'Meena');

COMMIT;

-- UNION
SELECT id, name FROM student1
UNION
SELECT id, name FROM student2;

-- UNION ALL
SELECT id, name FROM student1
UNION ALL
SELECT id, name FROM student2;

-- INTERSECT
SELECT id, name FROM student1
INTERSECT
SELECT id, name FROM student2;

-- MINUS
SELECT id, name FROM student1
MINUS
SELECT id, name FROM student2;
