/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var ingre = document.getElementById("sex_f");
var regis = document.getElementById("sex_m");
var user = document.getElementById("usuario");
var pass = document.getElementById("contrasena");
var backFred = document.getElementById("backFNet");

ingre.addEventListener("click",ingresarFun);
regis.addEventListener("click",registrarFun);
backFred.setAttribute("click","backFromRedes");

function ingresarFun(){
  //  idredsocial.setAttribute("type","visible");
    user.setAttribute("type","visible");
    pass.setAttribute("type","visible");
}

function registrarFun(){
   // idredsocial.setAttribute("type","visible");
    user.setAttribute("type","hidden");
    pass.setAttribute("type","hidden");
}

function backFromRedes(){
    alert("hola");
    window.location.href = "index.jsp";

}