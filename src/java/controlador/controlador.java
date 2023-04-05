/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Personas;
import modelo.PersonasDAO;

/**
 *
 * @author jhoan
 */
public class controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Personas pm=new Personas();
    PersonasDAO pdao=new PersonasDAO();
    int ida;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //este menu recibe y nos ejectura la accion de ver los datos en la tabla 
            //ni yo entendi lo que escribi pero se como es
            String menu=request.getParameter("menu");
            String accion=request.getParameter("accion");
            if(menu.equals("principal")){
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            if(menu.equals("Ficha")){
               request.getRequestDispatcher("Ficha.jsp").forward(request, response);
            }
            if(menu.equals("Aprendiz")){
                switch (accion) {
                    case "Listar":
                        List lista=pdao.listar();
                        request.setAttribute("aprendiz", lista);
                        break;
                    case "Agregar":
                         Personas nPersona = new Personas();

                        String cedula=request.getParameter("txtCedula");
                        String nombre=request.getParameter("txtNombre");
                        String apellido=request.getParameter("txtApellido");
                        String email=request.getParameter("txtEmail");
                        String IDRol=request.getParameter("txtIDRol");
                        String IDExcusa=request.getParameter("txtExcusa");
                        
                        nPersona.setcedula(cedula);
                        nPersona.setNombre(nombre);
                        nPersona.setapellido(apellido);
                        nPersona.setemail(email);
                        nPersona.setIdrol(email);

                        
                        nPersona.setIdrol(IDRol);
                        if(IDExcusa.length() > 0) pm.setIdexcusa(IDExcusa);
                        
                        

                        pdao.agregar(nPersona);
                        request.getRequestDispatcher("controlador?menu=Aprendiz&accion=Listar").forward(request, response);
                        break;
                    case "Editar":
               
                        ida=Integer.parseInt(request.getParameter("id"));
                        Personas e=pdao.listarId(ida);
                        request.setAttribute("Personas", e);
                        request.getRequestDispatcher("controlador?menu=Aprendiz&accion=Listar").forward(request, response);
                        break;
                    case "Actualizar":
                        String Cedula1=request.getParameter("txtCedula");
                        String Nombre1=request.getParameter("txtNombre");
                        String Apellido1=request.getParameter("txtApellido");
                        String Email1=request.getParameter("txtEmail");
                        String IDuser1=request.getParameter("txtIDusuario");
                        String IDRol1=request.getParameter("txtIDRol");
                        pm.setcedula(Cedula1);
                        pm.setNombre(Nombre1);
                        pm.setapellido(Apellido1);
                        pm.setemail(Email1);
                        pm.setIduser(IDuser1);
                        pm.setIdrol(IDRol1);
                        pm.setId(ida);
                        pdao.Actualizar(pm);
                        request.getRequestDispatcher("controlador?menu=Aprendiz&accion=Listar").forward(request, response);
                        break;
                    case "Eliminar":
                       
                        ida=Integer.parseInt(request.getParameter("id"));//captura el id de la fila para todo
                        pdao.eliminar(ida);//ejecutamos el metodo eliminar dentro de la clase personasdao
                        //listar datos actualizados
                        request.getRequestDispatcher("controlador?menu=Aprendiz&accion=Listar").forward(request, response);
                        break;   
                    default:
                        throw new AssertionError();
                }
               request.getRequestDispatcher("Aprendiz.jsp").forward(request, response);
            }
            if(menu.equals("Instructor")){
               request.getRequestDispatcher("Instructor.jsp").forward(request, response);
            }
            if(menu.equals("R_Asistencia")){
               request.getRequestDispatcher("R_Asistencia.jsp").forward(request, response);
            }
            if(menu.equals("Home")){
               request.getRequestDispatcher("Home.jsp").forward(request, response);
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
        processRequest(request, response);
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
