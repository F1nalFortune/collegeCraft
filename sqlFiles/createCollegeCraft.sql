DROP DATABASE IF EXISTS collegeCraft;
CREATE DATABASE IF NOT EXISTS collegeCraft;
USE collegeCraft;
DROP TABLE IF EXISTS users, roles, product, comments, sells, reputation, trade_ad;
CREATE TABLE users (
  user_id INT AUTO_INCREMENT,
  username varchar(15) NOT NULL,
  hashed_password varchar(255),
  email_address varchar(30),
  bio varchar(512),
  reputation_id INT,
  role_id INT,
  location varchar(128),
  name varchar(32),
  PRIMARY KEY (user_id)
);
CREATE TABLE roles (
  role_id INT AUTO_INCREMENT,
  role varchar(20),
  PRIMARY KEY (role_id)
);
CREATE TABLE reputation (
  reputation_id INT AUTO_INCREMENT,
  trust_level INT,
  statistics varchar(256),
  PRIMARY KEY (reputation_id)
);
CREATE TABLE sells (
  user_id INT,
  trade_ad_id INT,
  CONSTRAINT SELLS_user FOREIGN KEY (user_id) REFERENCES users(user_id),
  CONSTRAINT SELLS_trade FOREIGN KEY (trade_ad_id) REFERENCES trade_ad(id),
);
CREATE TABLE product (
  product_id INT AUTO_INCREMENT,
  description varchar(256),
  category varchar(256),
  PRIMARY KEY (product_id)
);
CREATE TABLE comments (
    comment_id INT AUTO_INCREMENT,
    trade_ad_id INT,
    user_id int,
    review varchar(256),
    rating INT,
    PRIMARY KEY (comment_id),
    CONSTRAINT COMMENTS_tradeid FOREIGN KEY (trade_ad_id) REFERENCES trade_ad(id),
    CONSTRAINT COMMENTS_user FOREIGN KEY (user_id) REFERENCES users(user_id)
);
create table trade_ad(
    id int not null AUTO_INCREMENT,
    product_id int,
    seller varchar(15),
    buyer varchar(15),
    price float,
    qty int,
    PRIMARY KEY (id)
);
INSERT INTO users (username, hashed_password) VALUES ('aaaa','$1$salt0123$DDmlS/eUhEk23hF59K/Yv/');
INSERT INTO users (username, hashed_password) VALUES ('aaaaaa','$1$salt0123$01QCUmrv4.Ao3hQdGHB6c1');
INSERT INTO users (username, hashed_password) VALUES ('hello','$1$salt0123$3vhIeCFYVtADi.UiQs3Ae/');
INSERT INTO users (username, hashed_password) VALUES ('zebra','$1$salt0123$N8X1JXgNGT5iFOZslL0N90');
INSERT INTO users (username, hashed_password) VALUES ('newbie','$1$salt0123$et3lF93ivaqsh6y4U2Sm.1');
