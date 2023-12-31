SET SERVEROUTPUT ON

DECLARE
    GRADE CHAR(1);
BEGIN
    GRADE := UPPER('&GRADE');

    CASE GRADE
        WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Excellent');
        WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Very Good');
        WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('Well Done');
        WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('You Passed');
        WHEN 'F' THEN DBMS_OUTPUT.PUT_LINE('Better Try Again');
        ELSE DBMS_OUTPUT.PUT_LINE('No Such Grade');
    END CASE;
END;
/