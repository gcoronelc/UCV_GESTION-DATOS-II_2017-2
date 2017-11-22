select * from SECCION;

select DATEADD(m, DATEDIFF(m, 0, GETDATE())+1, 0) - 1;

sp_help obligacion;

SELECT GETDATE();


select MATRICULA from periodo
where PERIODO = (select PERIODO from SECCION where SECCION = 2);

select * from SECCION;
select * from MATRICULA;
select * from OBLIGACION;