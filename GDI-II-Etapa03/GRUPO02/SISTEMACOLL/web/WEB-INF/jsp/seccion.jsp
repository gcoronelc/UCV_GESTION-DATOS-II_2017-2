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
                    <h1>REGISTRAR SECCION:</h1>
                </div>
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="<c:url value="/grado.htm" />">REGISTRAR GRADO</a></li>
                        
                    </ol>



                    <p>
                        <a href="<c:url value="addpago.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID:SECC:</th>
                                <th>ID:PERI:</th>                               
                                <th>ID:GRA:</th>
                                <th>ID:EMP:</th>
                                <th>NOM:SECC:</th>
                                <th>VACANTES:</th>
                                <th>MATRICULADOS:</th>
                                <th>ACC:</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.IDSeccion}" /></td>
                                    <td><c:out value="${dato.IDPeriodo}" /></td>
                                    <td><c:out value="${dato.IDGrado}" /></td>
                                    <td><c:out value="${dato.IDEmpleado}" /></td>
                                    <td><c:out value="${dato.Nom_seccion}" /></td>                                  
                                    <td><c:out value="${dato.Vacantes}" /></td>
                                    <td><c:out value="${dato.Matriculados}" /></td>
                                    <td>
                                        <a href="<c:url value="editpago.htm?IDNivel=${dato.IDPago}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                        <a href="<c:url value="deletepago.htm?IDNivel=${dato.IDPago}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
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
