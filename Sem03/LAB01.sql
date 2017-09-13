-- PREGUNTA 01
-- Desarrolle una sentencia SELECT para consultar 
-- el id, nombre, apellido y email de todos los 
-- alumnos. Base de datos EDUTEC.

SELECT IDALUMNO, NOMALUMNO, APEALUMNO, EMAILALUMNO
FROM EDUTEC..ALUMNO;


/*
IDALUMNO NOMALUMNO        APEALUMNO           EMAILALUMNO           
-------- ---------------- ------------------- -----------------------
A0001    Christian        Donayre Mena        cdonayre@peru.com     
A0002    Freddy           Ortiz Rodriguez     fortiz@hotmail.com    
A0003    Ruth Ketty       Silva Mejia         ksilva@gmail.com      
A0004    Liliana          Melendez Noriega    lmelendez@uni.edu.pe  
*/

-- Sección: Campos calculados

-- PREGUNTA 06
-- Desarrollar una sentencia SELECT que permita obtener el importe 
-- que se obtendría por cada curso programado si se logra vender 
-- todas las vacantes. Base de datos EDUTEC.

select * from edutec.dbo.curso;

select idcursoprog, idcurso, idciclo, 
       (vacantes + matriculados) vac_prog,
	   precursoprog,
	   (vacantes + matriculados) * precursoprog ingresos
from edutec.dbo.cursoprogramado;

/*

idcursoprog idcurso idciclo vac_prog    precursoprog    ingresos    
----------- ------- ------- ----------- --------------- ------------
1           C007    1978-01 20          700,00          14000.0000  
2           C006    1978-01 20          700,00          14000.0000  
3           C003    1978-01 20          700,00          14000.0000  
4           C009    1978-01 20          500,00          10000.0000  
5           C002    1978-01 20          500,00          10000.0000  

*/

select cp.idcursoprog, cp.idciclo, c.idcurso, c.nomcurso,
       (cp.vacantes + cp.matriculados) vac_prog,
	   cp.precursoprog,
	   (cp.vacantes + cp.matriculados) * cp.precursoprog ingresos
from edutec.dbo.curso c
join edutec.dbo.cursoprogramado cp
on c.idcurso = cp.idcurso;

/*

idcursoprog idciclo idcurso nomcurso                                           vac_prog                                precursoprog          ingresos
----------- ------- ------- -------------------------------------------------- --------------------------------------- --------------------- ---------------------------------------
1           1978-01 C007    Java - Web                                         20                                      700,00                14000.0000
2           1978-01 C006    Java - Cliente/Servidor                            20                                      700,00                14000.0000
3           1978-01 C003    Visual Basic .NET - Cliente/Servidor               20                                      700,00                14000.0000
4           1978-01 C009    PHP - Fundamentos                                  20                                      500,00                10000.0000
5           1978-01 C002    Visual Basic .NET - Fundamentos                    20                                      500,00                10000.0000

*/


-- Sección: Filtros

-- Operadores de Comparación

-- PREGUNTA 11

-- Desarrollar una sentencia SELECT para consultar 
-- los empleados del departamento de contabilidad. -- Base de datos RH.select * from rh.dbo.departamento;
-- Contabilidad: 101

select idempleado, apellido, nombre, iddepartamento, sueldo, comision
from rh.dbo.empleado
where iddepartamento = 101;

/*

idempleado apellido    nombre       iddepartamento sueldo     comision
---------- ----------- ------------ -------------- ---------- ----------
E0009      Marcelo     Ricardo      101            15000,00   NULL
E0010      Barrios     Guisella     101            8000,00    NULL
E0011      Cuellar     Lucy         101            2000,00    NULL

*/



-- Operadores Logicos

-- PREGUNTA 16
-- Desarrollar una sentencia SELECT para consultar 
-- los empleados que se desempeñan como gerentes. 
-- Base de datos RH

select * from rh.dbo.cargo;
-- idcargo = C01, C02

select idempleado, apellido, nombre, idcargo, sueldo, comision
from rh.dbo.empleado
where idcargo = 'C01' OR idcargo = 'C02';


select idempleado, apellido, nombre, idcargo, sueldo, comision
from rh.dbo.empleado
where idcargo IN ('C01','C02');

select idempleado, apellido, nombre, idcargo, sueldo, comision
from rh.dbo.empleado
where idcargo LIKE 'C0[12]';


/*

idempleado apellido        nombre        idcargo sueldo       comision
---------- --------------- ------------- ------- ------------ ----------
E0001      Coronel         Gustavo       C01     25000,00     NULL
E0003      Matsukawa       Sergio        C02     15000,00     NULL
E0009      Marcelo         Ricardo       C02     15000,00     NULL
E0012      Valencia        Hugo          C02     18000,00     NULL
E0016      Villarreal      Nora          C02     15000,00     NULL

*/






declare @nombre varchar(200);
set @nombre = 'Gustavo Coronel'
print 'Hola ' + @nombre;
GO




