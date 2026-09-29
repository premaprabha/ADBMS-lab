DECLARE
    total_rows NUMBER;
BEGIN
    DELETE FROM customer
    WHERE age = 18;

    total_rows := SQL%ROWCOUNT;

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE(total_rows || ' customers deleted');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No customers deleted');
    END IF;
END;
