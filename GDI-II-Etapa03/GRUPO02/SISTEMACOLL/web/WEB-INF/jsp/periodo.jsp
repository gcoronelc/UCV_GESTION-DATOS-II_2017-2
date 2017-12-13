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
                    <h1>PROGRAMACION:</h1>
                </div>
                <div class="p-3 mb-2 bg-info text-white">
                    <h1>REGISTRO PERIODO</h1>
                </div>
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="<c:url value="/index.htm" />">MENU PRINCIPAL</a></li>
                        <li><a href="<c:url value="/seccion.htm" />">REGISTRAR SECCION</a></li>
                        
                        

                    </ol>

                    <p>
                        <a href="<c:url value="addperiodo.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID:PERIO</th>
                                <th>NOM:PERIO</th>                               
                                <th>MATRICULA</th>
                                <th>PENSION</th>
                                <th>ESTADO</th>
                                <th>ACC</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>

                                    <td><c:out value="${dato.IDPeriodo}" /></td>
                                    <td><c:out value="${dato.Nom_periodo}" /></td>                                   
                                    <td><c:out value="${dato.Matricula}" /></td>
                                    <td><c:out value="${dato.Pension}" /></td>
                                    <td><c:out value="${dato.Estado}" /></td>
                                    <td>
                                        <a href="<c:url value="deleteperiodo.htm?IDPeriodo=${dato.IDPeriodo}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
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
