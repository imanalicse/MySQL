CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR (300) NOT NULL,
    password VARCHAR (500) NOT NULL,
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE posts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR (300),
    user_id INT NOT NULL,
    CONSTRAINT Fk_Users_Posts_user_id FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

# fk_[referencing table name]_[referenced table name]_[referencing field name]
# CONSTRAINT Fk_Users_FavoritePosts_user_id FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE

# fk_[referencing table name]_[referencing field name]_[referenced table name]_[referenced field name]
# CONSTRAINT Fk_Users_id_FavoritePosts_user_id FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE

INSERT INTO users (first_name, last_name, email, password) VALUES ("Iman", "Ali", "imanali.cse@gmail.com", "123456");
INSERT INTO posts (title, user_id) VALUES ("Post 1", 1);

DELETE FROM users WHERE id = 1;
# DELETE FROM posts WHERE id = 2;

