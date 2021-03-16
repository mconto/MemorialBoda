<%-- 
    Document   : confirmacion
    Created on : 15/03/2021, 05:23:23 PM
    Author     : Mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmación</title>
    </head>
    <body>
        <%
            String confirmacion=request.getParameter("men");
            %>
            
            <h1><%=confirmacion%></h1>
            <a href="index.jsp">Volver</a>
            <a href="mensajes.jsp">Ver mensajes</a>
    </body>
</html>
