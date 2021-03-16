

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.*;
import utils.Conexion;
/**
 *
 * @author Mauricio
 */
@WebServlet(urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String mensaje=request.getParameter("mensaje");
        String nombre=request.getParameter("nombre");
        boolean rpta= mensajeDB.insertarmensaje(mensaje, nombre);
        if (rpta){
        response.sendRedirect("confirmacion.jsp?men=Gracias por tu mensaje "+nombre+".");
        }
    }

    
        
        
      
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion=request.getParameter("accion");
        if (accion.equals("registrarImagen")){
            
            String autor=request.getParameter("txtAutor");
        String img=request.getParameter("txtImagen");
        foto f=new foto(img,autor);
        boolean rpta=fotoDB.insertarfoto(img,autor);
        if (rpta){
        response.sendRedirect("confirmacion.jsp?men=Gracias por tu foto "+autor+".");
        }
            
        }
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
