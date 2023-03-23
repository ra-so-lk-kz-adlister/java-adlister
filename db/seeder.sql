USE arcade_db;

# DROP TABLE IF EXISTS arcade_ads;
# #
# DROP TABLE IF EXISTS users;

INSERT INTO users (username, email, password)
VALUES ('admin', 'admin@codeup.edu', '$2a$12$Tpjk2mkq4KOLJxgnYXHhveBPiAWC7JVM3SeGtnHvEeFo'),
       ('osj4129','osj4129@gmail.com','$2a$12$Xrchtvl7H804mAM1yX1zzefldFHsZpoHS1VOk5PBn2ioKyStT8hZa');

INSERT INTO arcade_ads (user_id, ad_name, release_year, rating, description, price)
VALUES (1 , 'Pacman', 1980, 4, 'Action maze chase, classic coin-op. Must have for any collector! \n If interested, contact me at 555-555-5555', 1000),
       (1 , 'Area 51: Site 4', 1998, 5,
        'Area 51 is under attack from aliens, grab your gun and protect the base. Most iconic arcade gun game. \n If interested, contact me at 555-555-5555', 2000),
       (1 , 'Cruis`n USA', 1994, 4,
        'Get behind the wheel and race across the USA. Put your skills the test against your friends. \n If interested, contact me at 555-555-5555 ', 3000),
       (1 , 'The Mandoalorian', 2021, 5,
        'In this action-packed pinball quest, players are transported to a galaxy far, far away as they play as the Mandalorian, teaming up with key allies and protecting Grogu, while battling dangerous enemies and forces across their journey. \n If interested, contact me at 555-555-5555',
        11000),
       (2 , 'Mortal Kombat', 1993, 4,
        'Selling my Mortal Kombat 2 Arcade. This would make a nice addition to your game room... This one is in working order.. It has brand new locks with keys / led bulb inside the coin slot.. It also has the two coin buckets as well. I believe this one is in the original cabinet but the previous owner painted the art work in black but I could be wrong... The art work that is currently on it is just a side art sticker I bought.. it doesn''t have the original cover that goes over the control panel and the control panel art isn''t the original either.. Game loads up fine but does have a buzzing sound when the game loads up / game playing.. This is probably a simple fix.. I''ve owned this one for four years.. They do have signs of  scratches / missing wood due to moving from place to place..  Any other questions just send me a message.. \n If interested, contact me at 555-555-5555',
        1500),
       (2 , 'Turtles In Time', 1991, 4,
        ' this side‑scrolling, ninja weapon‑wielding, beat them up was the fan‑favorite sequel to 1989’s Teenage Mutant Ninja Turtles arcade game. \n If interested, contact me at 555-555-5555',
        800);

INSERT INTO genre (genre)
VALUES ('Fighter'),
       ('Light gun'),
       ('Pinball'),
       ('Action Adventure'),
       ('Racer'),
       ('Classic');

INSERT INTO ads_genre (ad_id, genre_id)
VALUES (1, 6),
       (2, 4),
       (2, 2),
       (3, 5),
       (4, 2),
       (4, 4),
       (5, 4),
       (5, 6),
       (6, 3),
       (6, 4);



