<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>SIS_WEB</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="p-3 mb-2 bg-info text-white">
                            <h1>REGISTRO ESTUDIANTE</h1>
                        </div>
                <div class="container">
                    <ol class="breadcrumb">

                        <li><a href="<c:url value="/matricula.htm" />">REGRESA A MATRICULA</a>
                        
                    </ol>
                                               
                    <p>
                        <a href="<c:url value="addmatricula.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID:ESTU:</th>
                                <th>NOMBRES:</th>
                                <th>APE:PATE:</th>
                                <th>APE:MATE:</th>
                                <th>FECH:NAC:</th>
                                <th>DNI:</th>
                                <th>DIRECCION:</th>
                                <th>TELEFONO:</th>                               
                                <th>EMAIL:</th>
                                <th>ACC:</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.IDEstudiante}" /></td>
                                    <td><c:out value="${dato.Nombres}" /></td>
                                    <td><c:out value="${dato.Apellido_pate}" /></td>
                                    <td><c:out value="${dato.Apellido_mate}" /></td>
                                    <td><c:out value="${dato.Fecha_Nacimiento}" /></td>
                                    <td><c:out value="${dato.Dni}" /></td>
                                    <td><c:out value="${dato.Direccion}" /></td>
                                    <td><c:out value="${dato.Telefono}" /></td>                                   
                                    <td><c:out value="${dato.Email}" /></td>
                                    <td>
                                        <a href="<c:url value="deletempleado.htm?IDEmpleado=${dato.IDEmpleado}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </body>
</html>
