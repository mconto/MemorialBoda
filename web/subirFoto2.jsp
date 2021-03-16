
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
                    <%
                        String img=request.getParameter("img");
                    
                %>
               
         <h2 align="center">
            <form class="form-horizontal" action="Controller" method="get">
                <table border="0" width="350" align="center">
              
                <tr>
                    <th>Autor: </th>
                    <th><input type="text" name="txtAutor"></th>
                </tr>
                <tr>
                    <th colspan="2"> <input type="submit" value="Registrar" name="CargarImagen">
                </tr>
                <input type="hidden" name="txtImagen" value="<%=img%>">
                <input type="hidden" name="accion" value="registrarImagen">
            </table>
                
            </form>
        </h2>       
    
        
    </body>
</html>
