declare 
    cursor k is select * from vdani.emp;
    my_row vdani.emp%rowtype;
begin
    open k;
    loop
        fetch k into my_row;
        exit when k%notfound;
        dbms_output.put_line(my_row.ename);
    end loop;
    close k;
end;
/

declare 
    cursor k is select * from vdani.emp where deptno=20;
begin
    for my_row in k loop
        dbms_output.put_line(my_row.ename);
    end loop;
end;
/
--select * from vdani.emp;
        
        
declare 
    cursor my_curs is select * from vdani.emp order by ename;
    i integer := 1;
    begin
    for my_row in my_curs loop
        if mod(i,2) = 1 then
            dbms_output.put_line(my_row.ename || ': ' || my_row.sal);
        end if;
        i := i+1;
    end loop
end;
/

declare
    cursor k is select * from vdani.emp for update;
begin
    select sum(sal)
    into sum_of_sal
    from emp;
    dbms_output.put_line(sum_of_sal);
    
    for my_row in k loop
        update emp
        set sal = sal +1
        where current of k;
    end loop;
    rollback;
end;
/
    