-- making 3nf

-- name, attack, classification
CREATE TABLE attack_info_threenf AS
SELECT name, attack, classfication
FROM qualities_twonf;

CREATE TABLE info_threenf AS
SELECT DISTINCT *
FROM attack_info_threenf;

-- has scores related to attack & classification
CREATE TABLE battle_scores_threenf AS
SELECT *
FROM battles_twonf;

CREATE TABLE scores_threenf AS
SELECT DISTINCT *
FROM battle_scores_threenf;

-- connects name to pokedex #
CREATE TABLE name_pokedex_threenf AS
SELECT DISTINCT name, pokedex_number
FROM qualities_twonf;

CREATE TABLE pokedex_threenf AS
SELECT DISTINCT name, pokedex_number
FROM name_pokedex_threenf;

-- connects name to all other traits a pokemon has
CREATE TABLE name_threenf AS
SELECT name, ability, base_egg_steps, base_happiness, base_total, capture_rate, defense, experience_growth,
height_m, hp, percentage_male, sp_attack, sp_defense, speed, type1, type2, weight_kg, generation, is_legendary
FROM qualities_twonf;

-- dropping all temp tables (1nf and 2nf and non-distinct 3nf)
DROP TABLE battles_twonf;
DROP TABLE final_one_nf;
DROP TABLE imported_pokemon_data;
DROP TABLE one_nf;
DROP TABLE qualities_twonf;
DROP TABLE name_pokedex_threenf;
DROP TABLE battle_scores_threenf;
DROP TABLE attack_info_threenf;