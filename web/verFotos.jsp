<%-- 
    Document   : verFotos
    Created on : 16/03/2021, 03:45:12 PM
    Author     : Mauricio
--%>
<%@page import="modelo.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="utils.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fotos Memoriales</title>
    </head>
    <body>
        <h1>Fotos de invitados</h1>
        
       
        <table align="center">
            <tr>
        <%
            ArrayList<foto> lista= fotoDB.obtenerFotos();
            int salto=0;
                for(foto f : lista){
                %>
                <th>
                        <img src="img/<%=f.getImg()%>"><p><!-- comment -->
                        <%=f.getAutor()%>
                </th></tr>
                <%salto++;
                if (salto==3){
                    %><tr>
                        
                <%
                }
                }
                %>
                
                
                </table>
              
    </body>
</html>
