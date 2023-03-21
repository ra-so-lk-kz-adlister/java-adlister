DROP DATABASE IF EXISTS arcade_db;

CREATE DATABASE arcade_db;

USE arcade_db;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100) NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE arcade_ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL, # Creator of ad
    ad_name VARCHAR(100),
    release_year INT NOT NULL,
    rating INT NOT NULL,
    description TEXT NOT NULL,
    price INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE ads_users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    ad_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (ad_id) REFERENCES arcade_ads (id)
);

CREATE TABLE genre (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genre TEXT NOT NULL
);

CREATE TABLE ads_genre (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ad_id INT UNSIGNED NOT NULL,
    genre_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES arcade_ads (id),
    FOREIGN KEY (genre_id) REFERENCES genre (id)
);