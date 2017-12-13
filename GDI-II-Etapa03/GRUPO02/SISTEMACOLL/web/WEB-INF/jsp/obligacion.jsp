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
                            <h1>OBLIGACION :</h1>
                        </div>

                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="<c:url value="/matricula.htm" />">REGRESA A MATRICULA</a></li>
                        <li><a href="<c:url value="/tobligacion.htm" />">REGISTRO TOBLIGACION</a></li>
                        <li><a href="<c:url value="/pago.htm" />">REGISTRO PAGO</a></li>

                    </ol>
                        <div class="p-3 mb-2 bg-info text-white">
                            <h1>REGISTRO OBLIGACION</h1>
                        </div>
                   
                    <p>
                        <a href="<c:url value="addpago.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID:OBL:</th>
                                <th>ID:ESTU</th>                               
                                <th>ID:MATR</th>
                                <th>ID:TOBL</th>
                                <th>IMPORTE</th>
                                <th>FECH:VEN</th>
                                <th>AUD:EMP</th>
                                <th>AUD:FECH</th>
                                <th>ACC:</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.IDObligacion}" /></td>
                                    <td><c:out value="${dato.IDEstudiante}" /></td>
                                    <td><c:out value="${dato.IDMatricula}" /></td>
                                    <td><c:out value="${dato.IDTObligacion}" /></td>
                                    <td><c:out value="${dato.Importe}" /></td>                                  
                                    <td><c:out value="${dato.FechaVen}" /></td>
                                    <td><c:out value="${dato.AudEmpleado}" /></td>
                                    <td><c:out value="${dato.AudFecha}" /></td>
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
