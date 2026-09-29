CREATE TABLE student (
    id NUMBER,
    name VARCHAR2(30)
);

INSERT INTO student VALUES (1, 'Roobani');
INSERT INTO student VALUES (2, 'Sabeetha');
INSERT INTO student VALUES (3, 'Kavitha');

SELECT
    name,
    UPPER(name) AS Upper_Name,
    LOWER(name) AS Lower_Name,
    LENGTH(name) AS Name_Length,
    SUBSTR(name, 1, 3) AS First_3,
    CONCAT(name, ' Student') AS Full_Name,
    REPLACE(name, 'a', 'A') AS Replace_Name
FROM student;
