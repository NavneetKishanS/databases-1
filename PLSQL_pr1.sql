DECLARE
    a INTEGER;
    b INTEGER;
BEGIN
    a := 1;
    b := 5;

    IF a < b THEN
        DBMS_OUTPUT.put_line('lesser');
    ELSIF a = b THEN
        DBMS_OUTPUT.put_line('they are equal');
    ELSE    
        DBMS_OUTPUT.put_line('not lesser');
    END IF;
END;
/

--SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION prim(n INTEGER) RETURN NUMBER IS
    is_p BOOLEAN := TRUE;
BEGIN
    IF n <= 1 THEN
        RETURN 0;
    END IF;


    FOR i IN 2..TRUNC(SQRT(n)) LOOP
        IF MOD(n, i) = 0 THEN
            is_p := FALSE;
            EXIT; 
        END IF;
    END LOOP;

    IF is_p THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;
/

--SELECT prim(4) from dual;


CREATE OR REPLACE FUNCTION factor(n integer) RETURN integer IS
    factorial integer := 1;
    begin
    if n<=1 then
    return 1;
    end if;
    
    for i in  2..n loop
    factorial := factorial*i;
    end loop;
    
    return factorial;
    
    end;
    /
    
    
SELECT factor(5) from dual;
    
    
CREATE OR REPLACE FUNCTION fib(n integer) RETURN INTEGER IS

    fib_prev integer := 0;
    fib_curr integer := 1;
    BEGIN
    if n <= 0 THEN
        return null;
    end if;
    
        FOR i IN 2..n LOOP
        DECLARE
            fib_next INTEGER;
        BEGIN
            fib_next := fib_prev + fib_curr;
            fib_prev := fib_curr;
            fib_curr := fib_next;
        END;
    END LOOP;
    
    return fib_curr;
    END;
/
    
    SELECT FIB(5) from dual;
