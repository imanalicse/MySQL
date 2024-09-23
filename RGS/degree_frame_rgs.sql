UPDATE latrobe_d8765_product_options SET `status` = 0 WHERE attribute_id = 57 AND product_id = 168 AND option_id IN (SELECT id FROM latrobe_d8765_options WHERE attribute_id = 57 AND colour = 'Black');

UPDATE latrobe_d8765_product_options SET `status` = 0 WHERE attribute_id = 57 AND product_id = 20 AND option_id IN (SELECT id FROM latrobe_d8765_options WHERE attribute_id = 57 AND `mould` IN ('Black', 'Prestige'));

UPDATE latrobe_d8765_product_options SET `status` = 0 WHERE attribute_id = 57 AND product_id = 19 AND option_id IN (SELECT id FROM latrobe_d8765_options WHERE attribute_id = 57 AND `mould` IN ('Black', 'Prestige'));