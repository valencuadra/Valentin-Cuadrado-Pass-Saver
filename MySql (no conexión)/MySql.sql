CREATE DATABASE database_links;

USE database_links;

CREATE TABLE users(
    id int(11) not null auto_increment,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


ALTER TABLE users
    MODIFY id int(11) not null auto_increment;

DESCRIBE users;

-- Links table --

create table links(
	id int(11) not null auto_increment,
    title varchar(150) not null,
    url varchar(250) not null,
    description TEXT,
    user_id int(11),
    primary key(id),
    created_at timestamp NOT NULL default current_timestamp,
    CONSTRAINT FK_user FOREIGN KEY (user_id) REFERENCES users(id)
);

DESCRIBE links;

-- Este comando se usó para solucionar un error de compatibilidad --
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '(contraseña censurada)';

alter table links add column mail varchar(150) not null;
alter table links add column contraseña varchar(150) not null;
ALTER TABLE links RENAME COLUMN contraseña TO contrasena;
ALTER TABLE links RENAME COLUMN description TO nombre;