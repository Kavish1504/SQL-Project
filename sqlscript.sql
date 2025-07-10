REM   Script: SQL Project
REM   Designed a normalized relational database with queries, views, triggers, and stored procedures; tested and deployed using Oracle Live SQL.



CREATE TABLE Trainer ( 
  id NUMBER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
  name VARCHAR2(255), 
  specialty VARCHAR2(255) 
);

CREATE TABLE Trainer ( 
  id NUMBER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
  name VARCHAR2(255), 
  specialty VARCHAR2(255) 
);

CREATE TABLE Trainer ( 
  id NUMBER PRIMARY KEY, 
  name VARCHAR2(255), 
  specialty VARCHAR2(255) 
);

 GENERATED ALWAYS AS IDENTITY


CREATE TABLE Trainer ( 
  id NUMBER PRIMARY KEY, 
  name VARCHAR2(255), 
  specialty VARCHAR2(255) 
) 
 
CREATE TABLE Member ( 
  id NUMBER PRIMARY KEY, 
  name VARCHAR2(255), 
  email VARCHAR2(255), 
  phone VARCHAR2(20), 
  trainer_id NUMBER, 
  FOREIGN KEY (trainer_id) REFERENCES Trainer(id) 
);

CREATE TABLE Subscription ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  plan VARCHAR2(255), 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

CREATE TABLE Attendance ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  date DATE, 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

CREATE TABLE Progress ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  progress CLOB, 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

CREATE TABLE Diet ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  diet CLOB, 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

CREATE TABLE Concession ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  reason CLOB, 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

INSERT NUMBERO Trainer (name, specialty) VALUES 
  ('John Smith', 'Strength'), 
  ('Emily Brown', 'Cardio'), 
  ('David Lee', 'Flexibility');

CREATE TABLE Trainer ( 
  id NUMBER PRIMARY KEY, 
  name VARCHAR2(255), 
  specialty VARCHAR2(255) 
) 
 
CREATE TABLE Member ( 
  id NUMBER PRIMARY KEY, 
  name VARCHAR2(255), 
  email VARCHAR2(255), 
  phone VARCHAR2(20), 
  trainer_id NUMBER, 
  FOREIGN KEY (trainer_id) REFERENCES Trainer(id) 
);

CREATE TABLE Subscription ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  plan VARCHAR2(255), 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

CREATE TABLE Attendance ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  date DATE, 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

CREATE TABLE Progress ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  progress CLOB, 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

CREATE TABLE Diet ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  diet CLOB, 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

CREATE TABLE Concession ( 
  id NUMBER PRIMARY KEY, 
  member_id NUMBER, 
  reason CLOB, 
  FOREIGN KEY (member_id) REFERENCES Member(id) 
);

INSERT INTO Trainer (name, specialty) VALUES 
  ('John Smith', 'Strength'), 
  ('Emily Brown', 'Cardio'), 
  ('David Lee', 'Flexibility');

CREATE TABLE Member ( 
  id NUMBER PRIMARY KEY, 
  name VARCHAR2(255), 
  email VARCHAR2(255), 
  phone VARCHAR2(20), 
  trainer_id NUMBER, 
  FOREIGN KEY (trainer_id) REFERENCES Trainer(id) 
);

