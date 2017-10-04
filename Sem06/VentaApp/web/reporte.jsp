<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <h1>VENTA APP</h1>
    <p>Por. Gustavo Coronel</p>
    <h2>INPUT</h2>
    <p>Precio: ${bean.precio}</p>
    <p>Cantidad: ${bean.cant}</p>
    <h2>OUTPUT</h2>
    <p>Importe: ${bean.importe}</p>
    <p>Impuesto: ${bean.impuesto}</p>
    <p>Total: ${bean.total}</p>
    
    <a href="index.html">Nueva Venta</a>
    
  </body>
</html>
