CREATE TABLE stage_image_unique_scheduler (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `stage_image_id` INT(11) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    `updated_at` TIMESTAMP NULL DEFAULT NULL ON UPDATE current_timestamp(),
    PRIMARY KEY (id),
    UNIQUE KEY (stage_image_id),
    CONSTRAINT `FkStageImageId` FOREIGN KEY (stage_image_id) REFERENCES stage_images(id) ON DELETE CASCADE
)ENGINE=INNODB;