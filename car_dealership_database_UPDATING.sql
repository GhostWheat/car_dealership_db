CREATE OR REPLACE FUNCTION fill_sellers(input_fname, input_lname)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO sellers
	VALUES(DEFAULT, input_fname, input_lname);
END;
&MAIN&;

