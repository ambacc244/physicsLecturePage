-- USE THIS QUERY ONLY WHEN THE FIRST SETUP, IF NOT, YOUR ORIGINAL DATA WILL BE LOST
DROP TABLE IF EXISTS lecture.lecture;
DROP TABLE IF EXISTS lecture.user;

-- -----------------------------------------------------
-- Table `lecture`
-- -----------------------------------------------------

CREATE TABLE lecture (
    `id` INT PRIMARY KEY AUTO_INCREMENT UNIQUE COMMENT 'Lecture id',
    `title` VARCHAR(50) NOT NULL COMMENT 'Lecture title',
    `description` TEXT NOT NULL COMMENT 'Lecture description',
    `link` TEXT NOT NULL COMMENT 'Lecture video link',
    `date` DATE NOT NULL COMMENT 'Lecture created date',
    `time` TIME NOT NULL COMMENT 'Lecture created time',
    `instructor_id` INT NOT NULL COMMENT 'Instructor, who uploaded the lecture, id'
    ) ENGINE=INNODB;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
CREATE TABLE USER (
    `id` INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    `user_id` VARCHAR(20) NOT NULL,
    `user_pw` VARCHAR(20) NOT NULL,
    `user_name` VARCHAR(20) NOT NULL;
    ) ENGINE=INNODB;


