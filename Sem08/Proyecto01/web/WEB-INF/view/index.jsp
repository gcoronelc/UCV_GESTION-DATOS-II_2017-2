<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>APP</title>
    </head>

    <body>
      <h1>APP</h1>
      <p>Por: Gustavo Coronel</p>
      <form method="post" action="consultar.htm">
        
        <label>Cuenta: </label>
        <input type="text" name="cuenta" />
        <input type="submit" value="Consultar" />
        
      </form>
      
      <h2>Resultado</h2>
      
      <p>${mensaje}</p>
      
      <c:if test="${lista != null}">
        
        <table>
          <tr>
            <th>NRO.MOV.</th>
            <th>FECHA</th>
            <th>TIPO</th>
            <th>IMPORTE</th>
          </tr>
          
          <c:forEach items="${lista}" var="r">
            
            <tr>
              <td>${r.movinumero}</td>
              <td>${r.movifecha}</td>
              <td>${r.tiponombre}</td>
              <td>${r.moviimporte}</td>
            </tr>
            
            
          </c:forEach>
          
        </table>
        
        
      </c:if>
      
    </body>
</html>
