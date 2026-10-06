-- Datos de ejemplo. Los precios son ilustrativos.
-- Ejecutar en game_store. No duplica un titulo en la misma plataforma.

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Minecraft', 'Supervivencia', 'PC', 2011, 29.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Minecraft' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'The Witcher 3: Wild Hunt', 'RPG', 'PC', 2015, 39.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'The Witcher 3: Wild Hunt' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Hollow Knight', 'Metroidvania', 'Switch', 2017, 14.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Hollow Knight' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Stardew Valley', 'Simulacion', 'PC', 2016, 13.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Stardew Valley' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Elden Ring', 'RPG de accion', 'PS5', 2022, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Elden Ring' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'God of War Ragnarok', 'Accion y aventura', 'PS5', 2022, 69.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'God of War Ragnarok' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'The Legend of Zelda: Tears of the Kingdom', 'Aventura', 'Switch', 2023, 69.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'The Legend of Zelda: Tears of the Kingdom' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Forza Horizon 5', 'Carreras', 'Xbox Series X', 2021, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Forza Horizon 5' AND plataforma = 'Xbox Series X'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Hades', 'Roguelike', 'PC', 2020, 24.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Hades' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Celeste', 'Plataformas', 'PC', 2018, 19.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Celeste' AND plataforma = 'PC'
);

