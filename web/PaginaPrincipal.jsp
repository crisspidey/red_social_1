<%-- 
    Document   : PaginaPrincipal
    Created on : 27/04/2016, 12:20:39 AM
    Author     : Andres Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Pagina Principal</title>
        <link rel="stylesheet" href="CSS/style.css">
        <link type="text/css" rel="stylesheet" href="ui/css/style.css"/>
  
    </head>
    <body>
        <div id="todo2">
        <div class="container">
            <div >
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
            
           
       </div>
        <div id="menu">
           
	</div>   
        <h1 class="register-title">Pagina Principal</h1>
                
                <form  method="POST" action="UsuarioControlador">
                    <div class="register">
                    <input type="text" class="register-input" placeholder="Nickname" id="usuario" name="usuarioN">
                    <input type="text" class="register-input" placeholder="Contraseña" id="contrasena" name="contrasenaN">
                    <input type="text" class="register-input" placeholder="Id Red Social" id="idRed" name="idRedN">
                    </td>
                    <input type="submit" name="accion" value="Iniciar sesion" class="register-button">
                    </div>
                </form>
                
        <div class="register-title">
            <a href="CrearRedSocial.jsp" class="register-title">Crear Red Social</a>
            
        </div>
        <div class="register-title">
            <a href="Registrarse.jsp" class="register-title">Registrarse</a>
            
        </div>
        
       </div> 
    </body>
</html>