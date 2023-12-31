SET SERVEROUTPUT ON

DECLARE
	DAY_NO NUMBER(2);
BEGIN
	DAY_NO := &DAY_NO;

	IF (DAY_NO = 1) THEN
		DBMS_OUTPUT.PUT_LINE('Today Is Monday');

	ELSIF (DAY_NO = 2) THEN
		DBMS_OUTPUT.PUT_LINE('Today Is Tuesday');

	ELSIF (DAY_NO = 3) THEN
		DBMS_OUTPUT.PUT_LINE('Today Is Wednesday');

	ELSIF (DAY_NO = 4) THEN
		DBMS_OUTPUT.PUT_LINE('Today Is Thursday');

	ELSIF (DAY_NO = 5) THEN
		DBMS_OUTPUT.PUT_LINE('Today Is Friday');

	ELSIF (DAY_NO = 6) THEN
		DBMS_OUTPUT.PUT_LINE('Today Is Saturday');

	ELSIF (DAY_NO = 7) THEN
		DBMS_OUTPUT.PUT_LINE('Today Is Sunday');

	ELSE
		DBMS_OUTPUT.PUT_LINE('Invailid Day');
	END IF;
END;
/