create or replace trigger nocambiesnombre before update of nombre on empleado for each row
BEGIN
	raise_application_error(-20374,'No se permite cmabiar el nombre del empleado');
END;
/	