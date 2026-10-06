-- 50 juegos adicionales. Precios de ejemplo.
-- Ejecutar sobre game_store. Evita duplicados por titulo y plataforma.

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Portal 2', 'Puzles', 'PC', 2011, 9.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Portal 2' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Half-Life 2', 'Disparos', 'PC', 2004, 9.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Half-Life 2' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Terraria', 'Supervivencia', 'PC', 2011, 9.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Terraria' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Cyberpunk 2077', 'RPG', 'PC', 2020, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Cyberpunk 2077' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Red Dead Redemption 2', 'Accion y aventura', 'PS4', 2018, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Red Dead Redemption 2' AND plataforma = 'PS4'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Grand Theft Auto V', 'Accion y aventura', 'PS4', 2014, 29.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Grand Theft Auto V' AND plataforma = 'PS4'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Baldur''s Gate 3', 'RPG', 'PC', 2023, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Baldur''s Gate 3' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Divinity: Original Sin 2', 'RPG', 'PC', 2017, 44.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Divinity: Original Sin 2' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Disco Elysium', 'RPG', 'PC', 2019, 39.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Disco Elysium' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Undertale', 'RPG', 'PC', 2015, 9.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Undertale' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Dead Cells', 'Roguelike', 'PC', 2018, 24.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Dead Cells' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Cuphead', 'Plataformas', 'PC', 2017, 19.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Cuphead' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Ori and the Blind Forest', 'Metroidvania', 'PC', 2015, 19.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Ori and the Blind Forest' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Ori and the Will of the Wisps', 'Metroidvania', 'PC', 2020, 29.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Ori and the Will of the Wisps' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Shovel Knight: Treasure Trove', 'Plataformas', 'Switch', 2017, 39.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Shovel Knight: Treasure Trove' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Super Mario Odyssey', 'Plataformas', 'Switch', 2017, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Super Mario Odyssey' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Mario Kart 8 Deluxe', 'Carreras', 'Switch', 2017, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Mario Kart 8 Deluxe' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Super Smash Bros. Ultimate', 'Lucha', 'Switch', 2018, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Super Smash Bros. Ultimate' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Animal Crossing: New Horizons', 'Simulacion', 'Switch', 2020, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Animal Crossing: New Horizons' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Metroid Dread', 'Metroidvania', 'Switch', 2021, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Metroid Dread' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Fire Emblem: Three Houses', 'Estrategia', 'Switch', 2019, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Fire Emblem: Three Houses' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Xenoblade Chronicles 3', 'RPG', 'Switch', 2022, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Xenoblade Chronicles 3' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Splatoon 3', 'Disparos', 'Switch', 2022, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Splatoon 3' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Luigi''s Mansion 3', 'Aventura', 'Switch', 2019, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Luigi''s Mansion 3' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Pikmin 4', 'Estrategia', 'Switch', 2023, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Pikmin 4' AND plataforma = 'Switch'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Resident Evil 4', 'Terror', 'PS5', 2023, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Resident Evil 4' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Resident Evil Village', 'Terror', 'PS5', 2021, 39.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Resident Evil Village' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Dead Space', 'Terror', 'PS5', 2023, 69.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Dead Space' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Alan Wake 2', 'Terror', 'PS5', 2023, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Alan Wake 2' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Silent Hill 2', 'Terror', 'PS5', 2024, 69.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Silent Hill 2' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Sekiro: Shadows Die Twice', 'Accion', 'PC', 2019, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Sekiro: Shadows Die Twice' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Dark Souls III', 'RPG de accion', 'PC', 2016, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Dark Souls III' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Bloodborne', 'RPG de accion', 'PS4', 2015, 19.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Bloodborne' AND plataforma = 'PS4'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Demon''s Souls', 'RPG de accion', 'PS5', 2020, 69.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Demon''s Souls' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Lies of P', 'RPG de accion', 'PC', 2023, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Lies of P' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Horizon Forbidden West', 'Accion y aventura', 'PS5', 2022, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Horizon Forbidden West' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Ghost of Tsushima', 'Accion y aventura', 'PS4', 2020, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Ghost of Tsushima' AND plataforma = 'PS4'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Marvel''s Spider-Man 2', 'Accion y aventura', 'PS5', 2023, 69.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Marvel''s Spider-Man 2' AND plataforma = 'PS5'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Uncharted 4: A Thief''s End', 'Aventura', 'PS4', 2016, 19.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Uncharted 4: A Thief''s End' AND plataforma = 'PS4'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'The Last of Us Part II', 'Accion y aventura', 'PS4', 2020, 39.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'The Last of Us Part II' AND plataforma = 'PS4'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Doom Eternal', 'Disparos', 'PC', 2020, 39.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Doom Eternal' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Halo Infinite', 'Disparos', 'Xbox Series X', 2021, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Halo Infinite' AND plataforma = 'Xbox Series X'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Gears 5', 'Disparos', 'Xbox One', 2019, 39.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Gears 5' AND plataforma = 'Xbox One'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Psychonauts 2', 'Plataformas', 'PC', 2021, 59.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Psychonauts 2' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'It Takes Two', 'Aventura cooperativa', 'PC', 2021, 39.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'It Takes Two' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'A Way Out', 'Aventura cooperativa', 'PC', 2018, 29.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'A Way Out' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Overcooked! 2', 'Cooperativo', 'PC', 2018, 24.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Overcooked! 2' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Slay the Spire', 'Cartas y roguelike', 'PC', 2019, 24.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Slay the Spire' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Outer Wilds', 'Exploracion', 'PC', 2019, 24.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Outer Wilds' AND plataforma = 'PC'
);

INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio)
SELECT 'Subnautica', 'Supervivencia', 'PC', 2018, 29.99
WHERE NOT EXISTS (
    SELECT 1 FROM juegos WHERE titulo = 'Subnautica' AND plataforma = 'PC'
);
