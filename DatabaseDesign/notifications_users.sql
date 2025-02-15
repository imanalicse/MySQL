CREATE TABLE notifications_users(
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `notification_id` INT(11) NOT NULL,
    `user_id` INT(11) NOT NULL,
    `is_read` TINYINT(1) NOT NULL DEFAULT 0,
    `is_send` TINYINT(1) NOT NULL DEFAULT 0,
     recipient_object TEXT NULL,
    `is_processing` TINYINT(1) NOT NULL DEFAULT 0,
    `is_processed` TINYINT(1) NOT NULL DEFAULT 0,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT Fk_Notifications_id_NotificationsUsers_notification_id FOREIGN KEY (`notification_id`)
    REFERENCES notifications (id) ON DELETE CASCADE,
    CONSTRAINT Fk_Users_id_NotificationsUsers_user_id FOREIGN KEY (`user_id`)
    REFERENCES notifications (id) ON DELETE CASCADE
)ENGINE=INNODB;