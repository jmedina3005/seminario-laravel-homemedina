CREATE DATABASE IF NOT EXISTS seminario_db;
USE seminario_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    contenido TEXT,
    user_id INT,
    categoria_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT IGNORE INTO users (nombre, email) VALUES
('Carlos Pérez', 'carlos@mail.com'),
('María Gómez', 'maria@mail.com');

INSERT IGNORE INTO categorias (nombre) VALUES
('Tecnología'),
('Deportes');

INSERT INTO posts (titulo, contenido, user_id, categoria_id) VALUES
('Mi primer post', 'Contenido del post 1', 1, 1),
('Segundo post', 'Contenido del post 2', 1, 2),
('Post de María', 'Hola mundo', 2, 1);
