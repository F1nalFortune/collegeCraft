DROP DATABASE IF EXISTS collegeCraft;
CREATE DATABASE IF NOT EXISTS collegeCraft;
USE collegeCraft;

DROP TABLE IF EXISTS users, roles, product, comments, sells, reputation;

CREATE TABLE users (username varchar(15) NOT NULL, hashed_pwd varchar(32), email_address varchar(30), user_id INT, bio varchar(512), reputation_id INT, role_id INT, location varchar(128), name varchar(32)
);
-- note that foregin keys are not yet included....

