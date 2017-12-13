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
                    <h1>REGISTRO TOBLIGACION</h1>
                </div>
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="<c:url value="/obligacion.htm" />">REGRESA A OBLIGACION</a></li>

                    </ol>

                    <p>
                        <a href="<c:url value="addtobligacion.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID:TOBL:</th>
                                <th>NOMBRE:</th>
                                <th>MORA:</th>
                                <th>ACC:</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.IDTObligacion}" /></td>
                                    <td><c:out value="${dato.Nombre}" /></td>
                                    <td><c:out value="${dato.Mora}" /></td>
                                    <td>
                                        <a href="<c:url value="deletetobligacion.htm?IDTObligacion=${dato.IDTObligacion}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
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
