<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.io.*"%>
<%@page import="java.io.*"%>

<%
    FileItemFactory file_factory = new DiskFileItemFactory();
    ServletFileUpload servlet_up= new ServletFileUpload(file_factory);
    List items= servlet_up.parseRequest(request);
    String img="";
    
    for (int i=0;i<items.size();i++){
        FileItem item=(FileItem) items.get(0);
        if (!item.isFormField()){
            File archivo_server =new File ("C:\\Users\\Mauricio\\Documents\\NetBeansProjects\\MensajesBDD\\img\\"+item.getName());
        try{
            item.write(archivo_server);
            }catch (Exception e){}
        img=item.getName();
            
       }
        
    }
    String autor=request.getParameter("txtAutor");
    %>
    <jsp:forward page="subirFoto2.jsp">
        <jsp:param name="img" value="<%=img%>"></jsp:param>
        
    </jsp:forward>
%>    