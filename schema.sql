-- Script de configuración para Supabase
-- 1. Crear tabla de Equipos (Entidad independiente)
CREATE TABLE equipos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    logo_url TEXT,
    fecha_creacion DATE DEFAULT CURRENT_DATE
);


-- 2. Crear tabla de Jugadores (Relación 1:N)
-- Cada jugador pertenece a un equipo [3, 4]
CREATE TABLE jugadores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    equipo_id INT REFERENCES equipos(id),
    puntos INT DEFAULT 0
);
