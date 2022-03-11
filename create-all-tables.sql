CREATE TABLE cities (
    name VARCHAR (200) PRIMARY KEY
);

CREATE TABLE tags (
    name VARCHAR (100)
);

CREATE TABLE locations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(300),
    street VARCHAR (300) NOT NULL ,
    postal_code VARCHAR (5),
    city_name VARCHAR (200) REFERENCES cities ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR (300) NOT NULL,
    password VARCHAR (500) NOT NULL,
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT REFERENCES users,
    location_id INT REFERENCES locations ON DELETE CASCADE,
    name VARCHAR(300) NOT NULL CHECK ( LENGTH(name) > 2 ),
    min_age INT CHECK (min_age > 0),
    event_date TIMESTAMP NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME ON UPDATE CURRENT_TIMESTAMP
);

# many-to-many relationships - Linking tatble

CREATE TABLE events_users (
    event_id INT REFERENCES events ON DELETE CASCADE,
    user_id INT REFERENCES users ON DELETE CASCADE,
    PRIMARY KEY (event_id, user_id)
);

CREATE TABLE events_tags (
    event_id INT REFERENCES events ON DELETE CASCADE,
    tag_name VARCHAR (100) REFERENCES tags ON DELETE CASCADE
);

