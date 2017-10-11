<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VENTA APP</title>
    </head>

    <body>
      <h1>VENTA APP</h1>
      <p>Por: Gustavo Coronel</p>
      
      <!-- FORMULARIO -->
      
      <form method="post" action="venta.htm">
        
        <label>Precio: </label>
        <input type="text" name="precio"/><br/>
        
        <label>Cantidad: </label>
        <input type="text" name="cant"/><br/>
        
        <input type="submit" value="Procesar"/><br/>
        
      </form>
      
      
      <!-- RESULTADO -->
      
      <c:if test="${bean != null}">
      <div>
        
        <h2>RESULTADO</h2>
        <h3>INPUT</h3>
        <p>Precio: ${bean.precio}</p>
        <p>Cantidad: ${bean.cant}</p>
        <h3>OUTPUT</h3>
        <p>Importe: ${bean.importe}</p>
        <p>Impuesto: ${bean.impuesto}</p>
        <p>Total: ${bean.total}</p>
        
      </div>
      </c:if>
      
    </body>
</html>
