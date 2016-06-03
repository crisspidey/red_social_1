<%-- 
    Document   : URLFotos
    Created on : 02-jun-2016, 21:10:21
    Author     : Cris-tian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form  method="POST" action="ComentarioControlador">
        <input type="hidden" name="comentario_url" value="cargarfoto">
        URL: <input type="text" name="url"><br>
        Description: <input type="text" name="description"><br>
        <button type="submit" value="submit">Subir fotos</button>
        
        </form>
     
    </body>
</html>
