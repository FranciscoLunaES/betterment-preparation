CREATE TABLE IF NOT EXISTS Student (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(60) NOT NULL,
  birthday DATE,
  gender BOOLEAN
);

CREATE TABLE IF NOT EXISTS Subject (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  credits SMALLINT,
  optional BOOLEAN DEFAULT false
);

CREATE TABLE IF NOT EXISTS Teacher (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(60) NOT NULL,
    degree VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Curriculum (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    validity DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Course (
    id SERIAL PRIMARY KEY,
    curricular_period DATE,
    id_teacher INTEGER,
    id_subject_curriculum INTEGER
);


CREATE TABLE IF NOT EXISTS Subject_curriculum (
    id SERIAL PRIMARY KEY,
    semester SMALLINT,
    id_curriculum INTEGER,
    id_subject INTEGER
);

CREATE TABLE IF NOT EXISTS Enrollment (
    grade NUMERIC(4,2),
    id_student INTEGER,
    id_course INTEGER
);

ALTER TABLE IF EXISTS Subject_curriculum 
    ADD CONSTRAINT fk_subject 
        FOREIGN KEY (id_subject) 
        REFERENCES Subject (id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS Subject_curriculum 
    ADD CONSTRAINT fk_curriculum 
        FOREIGN KEY (id_curriculum)
        REFERENCES Curriculum (id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS Course 
    ADD CONSTRAINT fk_teacher 
        FOREIGN KEY (id_teacher)
        REFERENCES Teacher (id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS Course 
    ADD CONSTRAINT fk_subject_curriculum 
        FOREIGN KEY (id_subject_curriculum)
        REFERENCES Subject_curriculum (id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS Enrollment 
    ADD CONSTRAINT fk_student 
        FOREIGN KEY (id_student)
        REFERENCES Student (id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS Enrollment 
    ADD CONSTRAINT fk_course 
        FOREIGN KEY (id_course) 
        REFERENCES Course (id)
        ON DELETE CASCADE;
        
ALTER TABLE Course
    ADD update_date DATE NOT NULL;



    INSERT into teacher(name, surname, degree) VALUES ('Luis', 'Banderas', 'ING');
INSERT into teacher(name, surname, degree) VALUES ('Guillermo', 'Villarreal', 'LIC');
INSERT into teacher VALUES (DEFAULT, 'Ernesto', 'Mendez', 'DR');
--SELECT * FROM teacher
INSERT into student(name, surname, birthday, gender) VALUES ('Abraham', 'Zaragoza', '07/13/1995', false);
--SELECT * FROM student
INSERT into curriculum(name, validity) VALUES ('Programacion', '2023-01-01');
--SELECT * FROM curriculum
INSERT into subject VALUES (DEFAULT, 'POO', 6, false);
INSERT into subject VALUES (DEFAULT, 'Math', 6, false);
INSERT into subject VALUES (DEFAULT, 'Geography', 6, false);
INSERT into subject VALUES (DEFAULT, 'Databases', 6, false);
--SELECT * FROM subject
INSERT INTO subject_curriculum VALUES (DEFAULT, 1, 1, 1);
INSERT INTO subject_curriculum VALUES (DEFAULT, 1, 1, 2);
INSERT INTO subject_curriculum VALUES (DEFAULT, 1, 1, 4);
--SELECT * FROM curriculum