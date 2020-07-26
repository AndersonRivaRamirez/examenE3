package Controlador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import BEAN.librosBEAN;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.libroDAO;



public class LoginServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            String usuario = new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8");
                    String clave = new String(request.getParameter("clave").getBytes("ISO-8859-1"), "UTF-8");
                
                    librosBEAN objEmpleadoBean = new librosBEAN();
                    objEmpleadoBean.setUsuario(usuario);
                    objEmpleadoBean.setClave(clave);
                    libroDAO objEmpleadoDAO = new libroDAO();
                   
                    int valido = objEmpleadoDAO.ValidarEmpleado(objEmpleadoBean);
                    
                    
                      if (valido == 1) {
                           request.setAttribute("usuario",valido);
                        getServletContext().getRequestDispatcher("/FrmPrincipal.jsp").forward(request, response);
                        
                       
                        
                    } else {
                        getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
                     
                        }
                 }
                          
                                      
        }
    

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
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
