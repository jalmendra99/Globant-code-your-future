use superheroes;

-- a
INSERT INTO creador VALUES
(1, "Marvel"),
(2, "DC Comics");

-- b
INSERT INTO personajes VALUES
(1, "Bruce Banner",    "Hulk",               160, "600 mil",   75,  98, 1962, "Fisico Nudear",          1),
(2,  "Tony Stark",     "Iron Man",           170, "200 mil",   70, 123, 1963, "Irki(entor Industrial",  1),
(3,  "Thor Odinson",   "Thor",               145, "infinite", 100, 235, 1962, "Rey de Asgard",          1),
(4,  "Wanda Maximoff", "Bruja Escarlata",    170, "100 mil",   93, 345, 1964, "Bruja",                  1),
(5,  "Carol Danvers",  "Capitana Marvel",    157, "250 mil",   85, 128, 1968, "Oficial de inteligencia",1),
(6,  "Thanos",         "Thanes",             170, "infinite",  40, 306, 1973, "Adorador de la muerte",  1),   
(7,  "Peter Parker",   "Spiderman",          165, "25 mil",    80,  74, 1962, "Fotagrafo",              1),   
(8,  "Steve Rogers",   "Capitan America",    145, "600",       41,  60, 1941, "Oficial Federal",        1),   
(9,  "Bobby Drake",    "Ice Man",            140, "2 mil",     64, 122, 1963, "Contador",               1),
(10, "Barry Allen",    "Flash",              160, "10 mil",   120, 168, 1956, "Clentifco forence",      2),
(11, "Bruce Wayne",    "Batman",             170, "500",       32,  47, 1939, "Hombre de negocios",     2),   
(12, "Clarck Kent",    "Superman",           165, "infinite", 120, 182, 1943, "Reportero",              2),   
(13, "Diana Prince",   "Mujer Maravilla",    160, "infinite",  95, 127, 1949, "Princesa gierrera",      2);

-- c
UPDATE personajes SET aparicion = 1938 WHERE personaje = "Superman" and id_personaje = 12;

-- d
DELETE FROM personajes WHERE id_personaje = 10;
