-- making 2NF

-- composite primary key (attack + classification)
CREATE TABLE battles_twonf AS
SELECT attack, classfication, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight,
against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
against_psychic, against_rock, against_steel, against_water
FROM final_one_nf;

-- name is primary key
CREATE TABLE qualities_twonf AS
SELECT name, pokedex_number, attack, classfication, value AS ability, base_egg_steps, base_happiness, base_total,
capture_rate, defense, experience_growth, height_m, hp, percentage_male, sp_attack, sp_defense, speed, 
type1, type2, weight_kg, generation, is_legendary
FROM final_one_nf;