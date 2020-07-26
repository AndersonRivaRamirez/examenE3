/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import BEAN.librosBEAN;
import DAO.libroDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Anderson
 */
public class EmpleadoServlet extends HttpServlet {
    librosBEAN em = new librosBEAN();
    libroDAO edao = new libroDAO();
   int ide;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("FrmPrincipal")) {
            request.getRequestDispatcher("FrmPrincipal.jsp").forward(request, response);
        } 
        if (menu.equals("Empleado")){
        switch (accion) {
             case "listar":
                   libroDAO libro = new libroDAO();
                 ArrayList<librosBEAN> lista=libro.listar();
                request.setAttribute("lista",lista);
                  getServletContext().getRequestDispatcher("/Libros/libroAdm.jsp").forward(request, response);
                 break;
                 
            case "Agregar":
                    String fecha = request.getParameter("txtnom");
                    String Autor = request.getParameter("txtfe");
                    String tematica = request.getParameter("txtTe");
                   
                    em.setFecha(fecha);
                    em.setAutor(Autor);
                    em.setTematica(tematica);
                  
                    edao.agregar(em);
                       getServletContext().getRequestDispatcher("/Libros/libroAdm.jsp").forward(request, response);
                    break;
                    
                case "Editar":
                    ide = Integer.parseInt(request.getParameter("id"));
                    librosBEAN e = edao.listarId(ide);
                    request.setAttribute("libro", e);
                    request.getRequestDispatcher("EmpleadoServlet?menu=Empleado&accion=listar").forward(request, response);
                    break;
                case "Actualizar":
                    String fec = request.getParameter("txtnom");
                    String autor = request.getParameter("txtfe");
                    String tem = request.getParameter("txtTe");
                   
                    em.setFecha(fec);
                    em.setAutor(autor);
                    em.setTematica(tem);
                    
                    edao.actualizar(em);
                    request.getRequestDispatcher("EmpleadoServlet?menu=Empleado&accion=listar").forward(request, response);
                    break;
                case "Delete":
                    ide = Integer.parseInt(request.getParameter("id"));
                    edao.delete(ide);
                    request.getRequestDispatcher("EmpleadoServlet?menu=Empleado&accion=listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
          
                    
 
                case "buscar":
                     String nombuscar=request.getParameter("txtbuscar");
                     if(nombuscar!=null)
                      
                      edao.buscar(em);
                     
                  getServletContext().getRequestDispatcher("/Libros/libros.jsp").forward(request, response);
                 break;
  
   
    }
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
