<%-- 
    Document   : index
    Created on : 15/03/2021, 04:16:58 PM
    Author     : Mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MEMORIAS DE BODA</title>
    </head>
    <body align="center">
        <h1>Deja tu mensaje a los recien casados</h1>
        <form action="Controller" method="post" align="center">
            <table border="0" align="center">
                <tr><th align="right">Tu nombre:</th><th><input type="text" name="nombre"></th></tr><!-- comment -->
                <tr><th colspan="2"><textarea name="mensaje" rows="10" cols="70" onKeyDown="valida_longitud()" onKeyUp="valida_longitud()">Deja aquí tu mensaje y pulsa el botón enviar</textarea></th>
                <tr><td>Caracteres permitidos 255:</td><td><input type="text" name=caracteres size=4></td></tr><!-- comment -->
                <tr><th><input type="submit" value="Dejar mensaje"></th></tr>
            </table>
        </form> 
        <table align="center">
            <tr><th><a href="mensajes.jsp">Ver mensajes</a></th></tr><p>
            <tr><th><a href="registrarFotos.jsp">Registrar fotos</a></th></tr><p>
            <tr><th><a href="verFotos.jsp">Ver fotos</a></th></tr><p>
        </table>
        
        
        
        
        
                <script>
contenido_textarea = ""
num_caracteres_permitidos = 255

function valida_longitud(){
   num_caracteres = document.forms[0].mensaje.value.length

   if (num_caracteres > num_caracteres_permitidos){
      document.forms[0].texto.value     = contenido_textarea
   }else{
      contenido_textarea = document.forms[0].mensaje.value
   }

   if (num_caracteres >= num_caracteres_permitidos){
      document.forms[0].caracteres.style.color="#ff0000";
   }else{
      document.forms[0].caracteres.style.color="#000000";
   }

   cuenta()
}
function cuenta(){
   document.forms[0].caracteres.value=document.forms[0].mensaje.value.length
}
</script>
                
                
 
    </body>
</html>
