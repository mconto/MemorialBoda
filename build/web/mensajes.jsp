<%-- 
    Document   : mensajes
    Created on : 15/03/2021, 05:42:09 PM
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
        <title>MEMORIAL DE BODA MAURICIO Y CAMILA</title>
    </head>
    <body>
        <h1 align="center">Con mucho cariño, de sus invitados:</h1>
        <table align="center">
            <tr><th>Mensaje</th><th>Invitado</th></tr>
        <%
            ArrayList<mensaje> lista= mensajeDB.obtenerMensajes();
            int salto=0;
                for(mensaje m : lista){
                    %>
                
            
                <tr>
                    <th>
                        <%=m.getMensaje()%>
                    </th>
                    <th>
                        <%=m.getNombre()%>
                    </th>
                </tr>
                <%
                    }
            %>
            </table>
    </body>
</html>
