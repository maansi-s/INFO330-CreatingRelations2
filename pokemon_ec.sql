-- EXTRA CREDIT #1: Introduce new Pokemon

-- first pokemon
INSERT INTO abilities_threenf (pokedex_number, ability)
VALUES ('802', 'Soul-Heart');

INSERT INTO other_threenf (pokedex_number, name, type1, type2, attack, base_egg_steps, base_happiness, base_total,
capture_rate, defense, classfication, hp, experience_growth, height_m,
sp_attack, percentage_male, sp_defense, speed, weight_kg, generation, is_legendary)
VALUES ('802', 'Huskichu', 'Mascot', NULL, '65', '5120', '70', '600', '300', '45', 'Seed Pokémon', '63', '1059860',
'1.0', '39', '88.1', '80', '60', '100.0', '1', '0');

INSERT INTO against_threenf (type1, type2, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight,
against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
against_psychic, against_rock, against_steel, against_water)
VALUES ('Mascot', NULL, '1', '1', '1', '0.5', '1', '0.25', '0.5', '1', '0.5', '0.25', '0.25', '1', '1', '0.5', '0.25', '1', '1', '1');

-- second pokemon
INSERT INTO abilities_threenf (pokedex_number, ability)
VALUES ('803', 'Shed Skin');

INSERT INTO other_threenf (pokedex_number, name, type1, type2, attack, base_egg_steps, base_happiness, base_total,
capture_rate, defense, classfication, hp, experience_growth, height_m,
sp_attack, percentage_male, sp_defense, speed, weight_kg, generation, is_legendary)
VALUES ('803', 'Cougarite', 'Mascot', NULL, '5', '5120', '70', '600', '300', '45', 'Flame Pokémon', '63', '1059860',
'0.9', '100', '50', '70', '50', '20.0', '2', '0');

INSERT INTO against_threenf (type1, type2, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight,
against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
against_psychic, against_rock, against_steel, against_water)
VALUES ('Mascot', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- EXTRA CREDIT #2: Support your local Pokemon trainer!

CREATE TABLE trainer (
    first_name varchar(80) NOT NULL,
    last_name varchar(80) NOT NULL
);

CREATE TABLE trainer_info AS
SELECT * from trainer;

ALTER TABLE trainer_info
ADD COLUMN favorite_pokemon_types varchar(255);
ALTER TABLE trainer_info
ADD COLUMN pokemon1 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon2 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon3 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon4 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon5 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon6 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon7 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon8 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon9 varchar(80);
ALTER TABLE trainer_info
ADD COLUMN pokemon10 varchar(80);

INSERT INTO trainer (first_name, last_name)
VALUES ('Maansi', 'Surve');
INSERT INTO trainer (first_name, last_name)
VALUES ('Justin', 'Dong');
INSERT INTO trainer (first_name, last_name)
VALUES ('Ted', 'Neward');
INSERT INTO trainer (first_name, last_name)
VALUES ('Abigail', 'Setiawan');

UPDATE trainer_info SET
	favorite_pokemon_types = '[Mascot,  Bug]',
	pokemon1='Charmander',
	pokemon2 = 'Pikachu',
	pokemon3 = 'Persian',
	pokemon4 = 'Paras',
	pokemon5 = 'Parasect',
	pokemon6 = NULL,
	pokemon7 = NULL,
	pokemon8 = NULL,
	pokemon9 = NULL,
	pokemon10 = NULL
WHERE first_name = 'Maansi' AND last_name = 'Surve';

UPDATE trainer_info SET
	favorite_pokemon_types = '[Water]',
	pokemon1='Ivysaur',
	pokemon2 = 'Bulbasaur',
	pokemon3 = 'Charmeleon',
	pokemon4 = 'Squirtle',
	pokemon5 = NULL,
	pokemon6 = NULL,
	pokemon7 = NULL,
	pokemon8 = NULL,
	pokemon9 = NULL,
	pokemon10 = NULL
WHERE first_name = 'Justin' AND last_name = 'Dong';

UPDATE trainer_info SET
	favorite_pokemon_types = '[Grass,  Normal,  Bug]',
	pokemon1='Venusaur',
	pokemon2 = 'Kakuna',
	pokemon3 = 'Rattata',
	pokemon4 = 'Spearow',
	pokemon5 = 'Ekans',
	pokemon6 = 'Arbok',
	pokemon7 = NULL,
	pokemon8 = NULL,
	pokemon9 = NULL,
	pokemon10 = NULL
WHERE first_name = 'Ted' AND last_name = 'Neward';

UPDATE trainer_info SET
	favorite_pokemon_types = '[Poison,  Ground,  Electric]',
	pokemon1='Paras',
	pokemon2 = 'Diglett',
	pokemon3 = 'Dugtrio',
	pokemon4 = 'Mankey',
	pokemon5 = 'Zubat',
	pokemon6 = 'Vulpix',
	pokemon7 = 'Oddish',
	pokemon8 = NULL,
	pokemon9 = NULL,
	pokemon10 = NULL
WHERE first_name = 'Abigail' AND last_name = 'Setiawan';


