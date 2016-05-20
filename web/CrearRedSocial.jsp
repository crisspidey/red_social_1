<%-- 
    Document   : index.jsp
    Created on : 25/04/2016, 02:06:17 PM
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="redsocial.vo.RedSocial"%>
<%@page import="redsocial.dao.RedSocialDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title name="titulo">Red Social Disponibles</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
        <link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
        <link rel="stylesheet" href="CSS/style.css">
        
        
    </head>
    <body>
        
         <%
        RedSocialDAO redesDao = new RedSocialDAO();
        List<RedSocial> redes = redesDao.findAll();
        %>
        <div id="todo">
            <div id="titulo">
               <img src="imagenes/red.png"/>
               
            </div>
        <div ID ="tituloprim"  >
                        <br>
                        <br>
                     <FONT  face="Comic Sans MS" size=10 color="#FE2E2E"><center>!!SOCIAL FRIENDS!!</center></FONT
                     <br>
                     <br>
                     <center><FONT  face="verdana" size=5 color="#04B431"><center></center> EL NUEVO MODO DE HACER AMIGOS </FONT></center>
                    </div>
       <div id="menu">
           <ul>
                <li><a href="PaginaPrincipal.jsp">pagina principal</a></li>	
            </ul>
	</div>        
        <div id="contenedor">          
                     <table id="tablaNormal" >
                           <tr >
                               <td>
                                   <form class="register" method="POST" action="RedSocialControlador">                                                   
                                       <h1 class="register-title">CREAR RED SOCIAL</h1>                                       
                                       <input type="text" class="register-input" placeholder="ID red" id="usuario" name="idred">
                                       <input type="text" class="register-input" placeholder="Nombre" id="contrasena" name="nombreN">
                                       
                                       <input type="submit" name="accion" value="REGISTRARSE" class="register-button">
                                   </form>
                               </td>
                               <td>
                                 <div id="right">                
                                            <form class="register" method="POST" action="ControladorRedSocial">                               
                                              <h1  class="register-title">Listado de redes</h1> 
                                                    
                                              <table >
                                                  <tr>
                                                        <th ID="colum1" >ID </th>
                                                        <th id="colum2" >NOMBRE</th>                        
                                                      </tr>
                                                <%
                                                for(int i = 0;i<redes.size();i++){
                                                %>
                                                <tr>
                                                    <td><% pageContext.getOut().println(redes.get(i).getIdRedSocial()); %></td>
                                                    <td><% pageContext.getOut().println(redes.get(i).getNombre()); %></td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                                <tr>
                                                    <td>no content</td>
                                                    <td>no content</td>
                                                </tr>
                                            </table>
                                              
                     
                                            </form>  
                                       </td>
                                    </table>   
                
                    
            
            </div>   
       </div>
    </div>
  </body>
</html>
