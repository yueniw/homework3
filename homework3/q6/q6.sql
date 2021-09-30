ALTER TABLE player_bios
ADD COLUMN temperary NUMERIC;

UPDATE player_bios
SET temperary = 12*split_part(height,'-',1)::integer + split_part(height,'-',2)::integer;

ALTER TABLE player_bios
DROP COLUMN height;

ALTER TABLE player_bios
RENAME COLUMN temperary TO height;

SELECT firstname,lastname,height from player_bios limit 5;