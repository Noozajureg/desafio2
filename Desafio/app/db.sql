DROP DATABASE DESAFIO;

CREATE DATABASE DESAFIO;

USE DESAFIO;

CREATE TABLE USERS (
    ACCOUNTID INT IDENTITY(1,1) PRIMARY KEY,
    EMAIL VARCHAR(50) UNIQUE NOT NULL,
    PASSWD VARCHAR(50) NOT NULL,
    SALT VARCHAR(15) NOT NULL,
    PHONE VARCHAR(11) NOT NULL,
    CPF VARCHAR(11) NOT NULL,							
    ACCOUNTTYPE INT DEFAULT 1,
    BALANCE INT DEFAULT 0
);

INSERT INTO USERS ( EMAIL, PASSWD, PHONE, CPF, BALANCE)VALUES ('ADDAASDA@DASDSA', '132SDAD', 1312312, 3131222, 0);
SELECT * FROM USERS;
SELECT PASSWD, SALT FROM USERS WHERE EMAIL = 'Eu@eu';
SELECT BALANCE FROM USERS WHERE ACCOUNTID = 2;
UPDATE USERS SET ACCOUNTTYPE = 0 WHERE ACCOUNTID = 1
DELETE FROM USERS WHERE ACCOUNTID = 3;
SELECT @@SERVERNAME