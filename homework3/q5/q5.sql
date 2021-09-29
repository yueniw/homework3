ALTER TABLE player_bios 
ADD COLUMN position TEXT;

UPDATE player_bios
SET position = new_table.position
FROM new_table
WHERE new_table.player = player_bios.id;

SELECT firstname,lastname,position from player_bios;
