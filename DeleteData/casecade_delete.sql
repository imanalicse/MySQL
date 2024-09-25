-- ON DELETE CASCADE referential action for a foreign key to delete data from multiple related tables.
CREATE TABLE rooms (
   room_no INT PRIMARY KEY AUTO_INCREMENT,
   room_name VARCHAR(255) NOT NULL,
   building_no INT NOT NULL,
   FOREIGN KEY (building_no)
       REFERENCES buildings (building_no)
       ON DELETE CASCADE
);