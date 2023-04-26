-- making 2NF

CREATE TABLE abilities_2nf AS
SELECT pokedex_number, value AS ability
FROM final_one_nf;

CREATE TABLE other_2nf AS
SELECT DISTINCT pokedex_number, name, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight,
against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
against_psychic, against_rock, against_steel, against_water, attack, base_egg_steps, base_happiness, base_total,
capture_rate, classfication, defense, experience_growth, height_m, hp, percentage_male, pokedex_number,
sp_attack, sp_defense, speed, type1, type2, weight_kg, generation, is_legendary
FROM final_one_nf;