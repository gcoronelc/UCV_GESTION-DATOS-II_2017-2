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
                        <h1>REGISTRO DE GRADO</h1> 
                    </div>
                <div class="container">
                    <ol class="breadcrumb">
                        
                        <li><a href="<c:url value="/nivel.htm" />">REGISTRAR NIVEL</a></li>                   
                        
                    </ol>

                    <p>
                        <a href="<c:url value="addgrado.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>IDGRA:</th>
                                <th>ID:NIV:</th>
                                <th>NOMBRE:</th>
                                <th>ACC:</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.IDGrado}" /></td>
                                    <td><c:out value="${dato.IDNivel}" /></td>
                                    <td><c:out value="${dato.Nombre}" /></td>
                                    <td>
                                        <a href="<c:url value="editgrado.htm?IDGrado=${dato.IDGrado}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                        <a href="<c:url value="deletegrado.htm?IDGrado=${dato.IDGrado}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
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
