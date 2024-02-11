-- create database and tables
CREATE DATABASE IF NOT EXISTS mydb;

USE mydb;

-- create table buses
CREATE TABLE IF NOT EXISTS buses (
    bus_id INT PRIMARY KEY AUTO_INCREMENT,
    b_from VARCHAR(30),
    b_to VARCHAR(30),
    s_time TIME,
    j_time TIME,
    a_time TIME,
    fare INT
);

-- create table users
CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    email VARCHAR(30) UNIQUE,
    password VARCHAR(30)
);

-- insert admin user
INSERT INTO users VALUES (1, 'admin', 'admin', 'admin');

-- create table bookings
CREATE TABLE IF NOT EXISTS bookings (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    u_id INT,
    bus_id INT,
    j_date DATE,
    seat INT
);

-- create table stats
CREATE TABLE IF NOT EXISTS stats (
    bus_id INT,
    j_date DATE,
    avl INT,
    PRIMARY KEY (bus_id, j_date)
);
