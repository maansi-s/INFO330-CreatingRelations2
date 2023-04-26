-- creating data table
sqlite3 pokemon.sqlite
.mode csv
.import pokemon.csv imported_pokemon_data

-- making 1NF
CREATE TABLE one_nf AS
SELECT *, trim(value) AS value
FROM imported_pokemon_data,
	json_each(' [" ' || replace(abilities, ',', ' ","') || ' "] ')
WHERE value <> ' ';

UPDATE one_nf
SET value = REPLACE(value, '[', '');

UPDATE one_nf
SET value = REPLACE(value, ']', '');

UPDATE one_nf
SET value = REPLACE(value, '''', '');

CREATE TABLE final_one_nf AS
SELECT value, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight,
against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
against_psychic, against_rock, against_steel, against_water, attack, base_egg_steps, base_happiness, base_total,
capture_rate, classfication, defense, experience_growth, height_m, hp, name, percentage_male, pokedex_number,
sp_attack, sp_defense, speed, type1, type2, weight_kg, generation, is_legendary
FROM one_nf;