<%-- 
    Document   : libros
    Created on : 25-jul-2020, 18:10:34
    Author     : Anderson
--%>


<%@page import="java.sql.*"%>

<%@page import="Util.ConnectionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BEAN.librosBEAN"%>
<%@page import="java.util.ArrayList"%>

<%! librosBEAN libros = null;
    ArrayList<librosBEAN> lista =null; %> 

<%
lista=(ArrayList<librosBEAN>)request.getAttribute("lista");
%>
<% Connection cn=null;
    PreparedStatement pt=null;
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title> 
    </head>
    <body>
        
       <form >
            <input type="text" name="txtbuscar" >
           
          <input type="submit" name="accion" value="Buscar" href="<%=request.getContextPath()%>/EmpleadoServlet?menu=Empleado&accion=buscar" class="btn btn-success">
               
             
        </form>
     
        <div class="d-flex">
      
        
            <table class="table table-hover">
                <thead>
                <tr>
                <th>ID</th>      
                <th>FECHA</th> 
                <th>AUTOR</th>
                <th>TEMATICA</th>
                <th>ACCION</th>
             
               </tr> 
           </thead>
            <tbody>
               
              
                   <% for (librosBEAN obj: lista) { %>
                        <tr>
                        <td> <%=obj.getIdlibro()%></td>
                        <td> <%=obj.getFecha()%></td>
                        <td> <%=obj.getAutor()%></td>
                        <td> <%=obj.getTematica()%></td>
                        <td>
                            
                          <input  type="submit" name="accion" value="Separar" class="btn btn-warning">
                       
                        </td>
                        </tr>   
                                   <% } %>  
      
           </tbody>
                
          </table>
        </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>
</html>

