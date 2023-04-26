-- making a table that connects type 1 & 2 to all of the against_x columns
CREATE TABLE against_threenf AS
SELECT DISTINCT type1, type2, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight,
against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
against_psychic, against_rock, against_steel, against_water
FROM other_2nf;

-- making a table that connects pokedex # t0 abilities
CREATE TABLE abilities_threenf AS
SELECT *
FROM abilities_2nf;

-- table that connects pokedex # to all other columns without any transitive dependencies
CREATE TABLE other_threenf AS
SELECT DISTINCT pokedex_number, name, type1, type2, attack, base_egg_steps, base_happiness, base_total,
capture_rate, classfication, defense, experience_growth, height_m, hp, percentage_male,
sp_attack, sp_defense, speed, weight_kg, generation, is_legendary
FROM other_2nf;

-- dropping all temp tables (1nf and 2nf)
DROP TABLE abilities_2nf;
DROP TABLE other_2nf;
DROP TABLE imported_pokemon_data;
DROP TABLE one_nf;
DROP TABLE final_one_nf;
