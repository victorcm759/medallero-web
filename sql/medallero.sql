CREATE DATABASE IF NOT EXISTS medallero;
USE medallero;

CREATE TABLE medallas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('Autonómico', 'Nacional', 'Internacional'),
    competicion VARCHAR(255),
    deporte VARCHAR(100),
    posicion ENUM('Oro', 'Plata', 'Bronce'),
    lugar VARCHAR(100),
    provincia VARCHAR(100),
    comunidad VARCHAR(100),
    pais VARCHAR(100),
    year YEAR
);

INSERT INTO medallas (tipo, competicion, deporte, posicion, lugar, provincia, comunidad, year) VALUES
('Autonómico', 'Campeonato de Cataluña de Eliminación por Equipos', 'Slalom', 'Oro', 'Vilafranca del Penedès', 'Barcelona', 'Cataluña', 'España', 2023),
('Autonómico', 'Campeonato de Cataluña de Slalom (Absoluto División WS4M)', 'Slalom', 'Plata', 'Granollers', 'Barcelona', 'Cataluña', 'España', 2023),
('Autonómico', 'Campeonato de Cataluña de Slalom (Absoluto Juvenil)', 'Slalom', 'Oro', 'Granollers', 'Barcelona', 'Cataluña', 'España', 2023),
('Nacional', 'Campeonato de España de Slalom en Silla de Ruedas (Crono WS4M)', 'Slalom', 'Bronce', 'Getafe', 'Madrid', 'Comunidad de Madrid', 'España', 2023),
('Nacional', 'Campeonato de España de Slalom en Silla de Ruedas (Eliminación Individual WS4M)', 'Slalom', 'Plata', 'Getafe', 'Madrid', 'Comunidad de Madrid', 'España', 2023),
('Autonómico', 'Campeonato de Cataluña de Slalom de Eliminación por Equipos', 'Slalom', 'Plata', 'Granollers', 'Barcelona', 'Cataluña', 'España', 2024),
('Autonómico', 'Campeonato de Cataluña de Slalom de Eliminación Individual', 'Slalom', 'Oro', 'Vilafranca del Penedès', 'Barcelona', 'Cataluña', 'España', 2024),
('Autonómico', 'Campeonato de Cataluña de Slalom de Eliminación por Equipos', 'Slalom', 'Bronce', 'Esplugues de Llobregat', 'Barcelona', 'Cataluña', 'España', 2025),
('Autonómico', 'Campeonato de Cataluña de Slalom (Absoluto Eliminación Individual)', 'Slalom', 'Plata', 'Sant Pere de Ribes', 'Barcelona', 'Cataluña', 'España', 2025),
('Autonómico', 'Liga Catalana de Boccia', 'Boccia', 'Bronce', 'Santa Coloma de Gramenet', 'Barcelona', 'Cataluña', 'España', 2025),
('Nacional', 'Campeonato de España de Slalom en Silla de Ruedas (Crono WS4M)', 'Slalom', 'Plata', 'Santa Marta de Tormes', 'Salamanca', 'Castilla y León', 'España', 2025),
('Nacional', 'Campeonato de España de Slalom en Silla de Ruedas (Eliminación Individual WS4M)', 'Slalom', 'Bronce', 'Santa Marta de Tormes', 'Salamanca', 'Castilla y León', 'España', 2025),
('Autonómico', 'Campeonato de Cataluña de Boccia Infantil y Juvenil', 'Boccia', 'Oro', 'Barcelona', 'Barcelona', 'Cataluña', 'España', 2025),
('Nacional', 'Copa de España de Boccia Individual por Selecciones Autonómicas', 'Boccia', 'Bronce', 'Lloret de Mar', 'Girona', 'Cataluña', 'España', 2025);