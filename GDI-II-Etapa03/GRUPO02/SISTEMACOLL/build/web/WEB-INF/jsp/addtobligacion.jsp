<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>SIS_WEB</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/addtobligacion.htm" />">ADICIONAR TOBLIGACION</a></li>

            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">
                   
                        <form:form method="post" commandName="tobligacion">
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            
                            <p>
                                <form:label path="Nombre">Nombre:</form:label>
                                <form:input path="Nombre" cssClass="form-control" />
                                <form:label path="Mora">Mora:</form:label>
                                <form:input path="Mora" cssClass="form-control" />
                                
                            </p>
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
>

