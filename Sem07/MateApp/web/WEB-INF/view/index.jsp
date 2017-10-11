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
      
      <!-- FORMULARIO -->
      <h2>DATO</h2>
      <form method="POST" action="procesar.htm">
        
        <label>Número:</label><br/>
        <input type="text" name="num" />
        
        <input type="submit" value="Procesar" />
        
      </form>
      
      <div>
        
        <h2>REPORTE</h2>
        
        <P>Número: ${num}</P>
        <P>Factorial: ${factorial}</P>
        <P>Es Primo?: ${primo}</P>
        <P>Sumatoria: ${sumatoria}</P>
        
      </div>
      
    </body>
</html>
