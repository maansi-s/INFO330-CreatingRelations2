-- extra credit #1: Introduce new Pokemon

-- first pokemon
INSERT INTO info_threenf (name, attack, classfication)
VALUES ('Huskichu', '40', 'Seed Pokémon');

INSERT INTO scores_threenf (attack, classfication, against_bug, against_dark, against_dragon, against_electric,
against_fairy, against_fight,
against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
against_psychic, against_rock, against_steel, against_water)
VALUES ('40', 'Seed Pokémon', '1', '1', '1', '0.5', '1', '0.25', '0.5', '1', '0.5', '0.25', '0.25', '1', '1', '0.5', '0.25', '1', '1', '1');

INSERT INTO pokedex_threenf (name, pokedex_number)
VALUES ('Huskichu', '802');

INSERT INTO name_threenf (name, ability, base_egg_steps, base_happiness, base_total, capture_rate, defense, experience_growth,
height_m, hp, percentage_male, sp_attack, sp_defense, speed, type1, type2, weight_kg, generation, is_legendary)
VALUES ('Huskichu', 'Shed Skin', '5120', '70', '405', '45', '49', '1059860', '0.7', '60', '88.2', '60', '120', '60', 'Mascot', NULL, '6.9', '1', '0');

-- second pokemon
INSERT INTO info_threenf (name, attack, classfication)
VALUES ('Cougarite', '20', 'Seed Pokémon');

INSERT INTO scores_threenf (attack, classfication, against_bug, against_dark, against_dragon, against_electric,
against_fairy, against_fight,
against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
against_psychic, against_rock, against_steel, against_water)
VALUES ('20', 'Seed Pokémon', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

INSERT INTO pokedex_threenf (name, pokedex_number)
VALUES ('Cougarite', '803');

INSERT INTO name_threenf (name, ability, base_egg_steps, base_happiness, base_total, capture_rate, defense, experience_growth,
height_m, hp, percentage_male, sp_attack, sp_defense, speed, type1, type2, weight_kg, generation, is_legendary)
VALUES ('Cougarite', 'Shed Skin', '5120', '70', '405', '45', '49', '1059860', '0.7', '60', '88.2', '60', '120', '60', 'Mascot', NULL, '6.9', '1', '0');





-- extra credit #2: Support your local Pokemon trainer!

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


