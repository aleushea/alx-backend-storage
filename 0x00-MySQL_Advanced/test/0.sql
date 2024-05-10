-- creates a table users
-- id, integer, never null, auto increment and primary key
-- email, string (255 characters), never null and unique
-- name, string (255 characters)

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email` varchar(255) NOT NULL UNIQUE,
	`name` varchar(255),
	PRIMARY KEY (`id`)
);

  
  INSERT INTO users (email, name) VALUES ("bob@dylan.com", "Bob");
  INSERT INTO users (email, name) VALUES ("sylvie@dylan.com", "Sylvie");
  INSERT INTO users (email, name) VALUES ("bob@dylan.com", "Jean");
  
  SELECT * FROM users;
