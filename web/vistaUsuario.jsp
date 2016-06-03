<%-- 
    Document   : vistaUsuario
    Created on : 25/04/2016, 02:07:30 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Usuario</title>
        <link rel="stylesheet" href="CSS/style.css">
        <link type="text/css" rel="stylesheet" href="ui/css/style.css"/>
  
    </head>
    <body>
        <div id="todo2">
        <div class="container">
            <div >
                
                <a href="PaginaPrincipal.jsp"><img src="imagenes/red.png"/></a>
               </div>
                    <div ID ="tituloprim"  >
                        <br>
                        <br>
                     <FONT  face="Comic Sans MS" size=10 color="#FE2E2E"><center>!!SOCIAL FRIENDS!!</center></FONT
                     <br>
                     <br>
                     <center><FONT  face="verdana" size=5 color="#FEF9F9"><center></center> EL NUEVO MODO DE HACER AMIGOS </FONT></center>
                    </div>
             
           
       </div>
        <div id="menu">
           <ul>
		<li><a href="Grupos.jsp">Grupos</a></li>
                <li><a href="Buscarusuarios.jsp">Buscar usuarios</a></li>
		
		
            </ul>
	</div>   
        <form  method="POST" action="UsuarioControlador">
                    <div class="register">
                
                    <input type="text" class="register-input" placeholder="Url foto" id="urlfoto" name="url">
                    <input type="text" class="register-input" placeholder="Descripcion" id="idRed" name="desc">
                    </td>
                    <input type="submit" name="accion" value="Publicar" class="register-button">
                    </div>
                </form>
            <p>
                
            </p>
             <form  method="POST" action="UsuarioControlador">
                    <div class="register">
                
                    <input type="text" class="register-input" placeholder="Comentario" id="Comentario" name="comentario">
                    
                    </td>
                    <input type="submit" name="accion" value="Publicar" class="register-button">
                    </div>
                </form>
       
       </div> 
    </body>
</html>

