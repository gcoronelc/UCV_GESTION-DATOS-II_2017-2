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
                <li><a href="<c:url value="/addperiodo.htm" />">REGISTRO PERIODO</a></li>

            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">AGREGAR PERIODO</div>
                <div class="panel-body">
                   
                        <form:form method="post" commandName="periodo">
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            
                            <p>
                                <form:label path="Nom_periodo">NON:PERIODO:</form:label>
                                <form:input path="Nom_periodo" cssClass="form-control" />
                                <form:label path="Matricula">MATRICULA:</form:label>
                                <form:input path="Matricula" cssClass="form-control" />
                                <form:label path="Pension">PENSION:</form:label>
                                <form:input path="Pension" cssClass="form-control" />
                                <form:label path="Estado">Estado:</form:label>
                                <form:input path="Estado" cssClass="form-control" />
                                
                            </p>
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
