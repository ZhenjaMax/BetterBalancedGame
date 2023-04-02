--Delete original Theodora bonus / Change to +1 culture for hippos and hs per adjacent districts

DELETE FROM TraitModifiers WHERE TraitType='TRAIT_LEADER_THEODORA';

INSERT INTO Modifiers(ModifierId, ModifierType) VALUES
	('BBG_THEODORA_HOLYSITE_CULTURE', 'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY'),
	('BBG_THEODORA_HIPPODROME_CULTURE', 'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
	('BBG_THEODORA_HOLYSITE_CULTURE', 'DistrictType', 'DISTRICT_HOLY_SITE'),
	('BBG_THEODORA_HOLYSITE_CULTURE', 'YieldType', 'YIELD_CULTURE'),
	('BBG_THEODORA_HOLYSITE_CULTURE', 'Amount', '1'),
	('BBG_THEODORA_HOLYSITE_CULTURE', 'Description', 'LOC_BBG_THEODORA_HOLYSITE_CULTURE'),
	('BBG_THEODORA_HIPPODROME_CULTURE', 'DistrictType', 'DISTRICT_HIPPODROME'),
	('BBG_THEODORA_HIPPODROME_CULTURE', 'YieldType', 'YIELD_CULTURE'),
	('BBG_THEODORA_HIPPODROME_CULTURE', 'Amount', '1'),
	('BBG_THEODORA_HIPPODROME_CULTURE', 'Description', 'LOC_BBG_THEODORA_HIPPODROME_CULTURE');

INSERT INTO TraitModifiers(TraitType, ModifierId) VALUES
	('TRAIT_LEADER_THEODORA', 'BBG_THEODORA_HOLYSITE_CULTURE'),
	('TRAIT_LEADER_THEODORA', 'BBG_THEODORA_HIPPODROME_CULTURE');