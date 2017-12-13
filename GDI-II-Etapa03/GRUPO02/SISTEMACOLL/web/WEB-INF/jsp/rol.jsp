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
                
                <div class="container">
                    <ol class="breadcrumb">
                       <li><a href="<c:url value="/empleado.htm" />">REGISTRO EMPLEADO</a></li>
                        
                    </ol>
                        <div class="p-3 mb-2 bg-info text-white">
                            <h1>REGISTRO ROL</h1>
                        </div>                       
                    <p>
                        <a href="<c:url value="addrol.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID:ROL:</th>
                                <th>NOMBRE:</th>
                                <th>ACC:</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.IDRol}" /></td>
                                    <td><c:out value="${dato.Nombre}" /></td>
                                    <td>
                                        <a href="<c:url value="editrol.htm?IDRol=${dato.IDRol}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                        <a href="<c:url value="deleterol.htm?IDRol=${dato.IDRol}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
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
