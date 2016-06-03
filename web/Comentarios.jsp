<%-- 
    Document   : Comentarios
    Created on : 02-jun-2016, 19:58:47
    Author     : Cris-tian
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <form  method="POST" action="ComentarioControlador">
         <input type="hidden" name="comentario" value="comentar">
         <h1><font size=4> Por favor escribe tus comentarios</h1>
         <textarea input type="text" id="myText" name="coment" rows="10" cols="40" overflow: scroll> </textarea>
         <button type="submit" value="submit">Publicar</button>
         <table>
             <tr>
             <%
             ArrayList<String> cap_coments=new ArrayList<String>();
             cap_coments.add(request.getParameter("coment"));
             for(int i=0;i<cap_coments.size();i++)
             {
                 out.println("<tr>"+cap_coments.toString()+"</tr>");
             }
             
     %>  </tr>   </table>
     </form>
        
    </body>
</html>
