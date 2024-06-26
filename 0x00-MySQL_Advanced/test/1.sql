-- creates a table users
-- id, integer, never null, auto increment and primary key
-- email, string (255 characters), never null and unique
-- name, string (255 characters)
-- country, enumeration of countries: US,
-- CO and TN, never null (= default will be
-- the first element of the enumeration, here US)


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email` varchar(255) NOT NULL UNIQUE,
	`name` varchar(255),
    `country` ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',
	PRIMARY KEY (`id`)
);

INSERT INTO users (email, name, country) VALUES ("bob@dylan.com", "Bob", "US");
INSERT INTO users (email, name, country) VALUES ("sylvie@dylan.com", "Sylvie", "CO");
INSERT INTO users (email, name, country) VALUES ("jean@dylan.com", "Jean", "FR");
INSERT INTO users (email, name) VALUES ("john@dylan.com", "John");

SELECT * FROM users;
