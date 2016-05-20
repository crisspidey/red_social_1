<%-- 
    Document   : crearedsocial
    Created on : 25/04/2016, 03:09:45 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Red Social Disponibles</title>
        <link rel="stylesheet" href="CSS/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="todo1">
         <div >
            <div >
               <img src="imagenes/red.png"/>
                    <div ID ="tituloprim"  >
                        <br>
                        <br>
                     <FONT  face="Comic Sans MS" size=10 color="#FE2E2E"><center>!!SOCIAL FRIENDS!!</center></FONT
                     <br>
                     <br>
                     <center><FONT  face="verdana" size=6 color="#04B431"><center></center> LA NUEVO MODO DE HACER AMIGOS </FONT></center>
                    </div>
            </div>
           
       </div>
        <div id="menu">
           <ul>
               <li><a href="PaginaPrincipal.jsp">Pagina Principal</a></li>
                
           </ul>
	</div>   
      
         <table id="tablaNormal">
            <tr >
                <td>
                    <form class="register" method="POST" action="RegistrarseControlador">                   
                                                                              
                             <h1 class="register-title">Registrarse</h1>
                       <input type="text" class="register-input" placeholder="Identificacion" id="iduser" name="idUser">
                        <input type="text" class="register-input" placeholder="Nombre" id="usuarionombre" name="usuarioN">
                        <input type="text" class="register-input" placeholder="Nickname" id="nick" name="nicknameN">
                        <input type="text" class="register-input" placeholder="Edad" id="edad" name="edadN">
                        <input type="text" class="register-input" placeholder="Contraseña" id="passw" name="contraseN">
                        <input type="text" class="register-input" placeholder="Correo" id="correo" name="correoN">
                        <input type="text" class="register-input" placeholder="ID Red Social" id="redid" name="idredN">
                        <input type="submit" name="accion" value="Registrar/Crear" class="register-button" href="CrearRedSocial.jps">
                      
                    </form>
                </td>
                
      </div>
    </body>
</html>
