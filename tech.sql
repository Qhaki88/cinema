
CREATE TABLE IF NOT EXISTS `accounts`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `password` VARCHAR(100) NOT NULL,
    `gender` VARCHAR(50) DEFAULT '1' COMMENT '1 là nam, 0 là nữ',
    `phone` VARCHAR(100) NOT NULL UNIQUE,
    `status` TINYINT DEFAULT '1' COMMENT '1 là hoạt động, 0 bị khóa',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` DATETIME DEFAULT NULL,
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `services` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `meta_tittle` VARCHAR(255),
    `meta_content` VARCHAR(255),
    `status` TINYINT DEFAULT '1',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` DATETIME DEFAULT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `products` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `meta_tittle` VARCHAR(255),
    `meta_content` VARCHAR(255),
    `status` TINYINT DEFAULT '1',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` DATETIME DEFAULT NULL,
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `employees` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255),
    `birth_day` DATE,
    `phone` VARCHAR(100) NOT NULL UNIQUE,
    `gender` VARCHAR(255),
    `working_position` VARCHAR(255),
    `status` TINYINT DEFAULT '1',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` DATETIME DEFAULT NULL,
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `statistics` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255),
    `point` INT NOT NULL,
    `status` TINYINT DEFAULT '1',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` DATETIME DEFAULT NULL,
) ENGINE = InnoDB;




