set serveroutput on
create or replace trigger auditar_emp after insert or delete on empleado for each row
BEGIN
	if inserting then
		insert into auditarempleado values(sysdate||' '|| :old.num_emp ||' '|| :old.nombre ||' '|| 'INSERCCION');
	end if;	
	if deleting then
		insert into auditarempleado values(sysdate||' '|| :old.num_emp ||' '|| :old.nombre||' '|| 'BORRADO');
	end if;	
END;
/	