DROP DATABASE IF EXISTS collegeCraft;
CREATE DATABASE IF NOT EXISTS collegeCraft;
USE collegeCraft;

DROP TABLE IF EXISTS users, roles, product, comments, sells, reputation;

CREATE TABLE users (username varchar(15) NOT NULL, hashed_password varchar(255), email_address varchar(30), user_id INT, bio varchar(512), reputation_id INT, role_id INT, location varchar(128), name varchar(32), PRIMARY KEY (username));
-- note that foregin keys are not yet included....

CREATE TABLE roles (role_id INT, role varchar(20), PRIMARY KEY (role_id)); 
CREATE TABLE reputation (reputation_id INT, trust_level INT, statistics varchar(256), PRIMARY KEY (reputation_id)); 
CREATE TABLE sells (user_id INT, product_id INT);
CREATE TABLE product (product_id INT, description varchar(256), price INT, category varchar(256), PRIMARY KEY (product_id));
CREATE TABLE comments (comment_id INT, product_id INT, user_id INT, review varchar(256), rating INT, PRIMARY KEY (comment_id));

