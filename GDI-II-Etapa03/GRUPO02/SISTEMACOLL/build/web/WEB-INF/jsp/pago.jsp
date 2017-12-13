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
                    <h1>REGISTRO PAGO</h1>
                </div>
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="<c:url value="/index.htm" />">MENU PRINCIPAL</a></li>
                        <li><a href="<c:url value="/obligacion.htm" />">REGRESA A OBLIGACION</a></li>

                    </ol>


                    <p>
                        <a href="<c:url value="addpago.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID:PAGO</th>
                                <th>ID:OBL</th>                               
                                <th>FECH:PAGO</th>
                                <th>IMPORTE</th>
                                <th>MORA</th>
                                <th>TOTAL</th>
                                <th>AUD:EMP</th>
                                <th>AUD:FECH</th>
                                <th>ACC:</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.IDPago}" /></td>
                                    <td><c:out value="${dato.IDObligacion}" /></td>                                   
                                    <td><c:out value="${dato.FechaPago}" /></td>
                                    <td><c:out value="${dato.Importe}" /></td>
                                    <td><c:out value="${dato.Mora}" /></td>
                                    <td><c:out value="${dato.Total}" /></td>
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
