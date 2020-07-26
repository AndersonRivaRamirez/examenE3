<%-- 
    Document   : libroAdm
    Created on : 25-jul-2020, 18:27:43
    Author     : Anderson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BEAN.librosBEAN"%>
<%@page import="java.util.ArrayList"%>

<%! librosBEAN libros = null;
    ArrayList<librosBEAN> lista =null; %> 

<%
lista=(ArrayList<librosBEAN>)request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title> 
    </head>
    <body>
        <div class="d-flex">
             <div class="card col-sm-3">
         <div class="card-boby">
                
            <form name="form">
                 
                    <div class="form-group">
                        
              </div>
                  <div class="form-group">
                      <label>Fecha:</label>
                      <input type="text" name="txtnom" class="form-control">
                  </div>
                  
                  <div class="form-group">
                      <label>Autor:</label>
                      <input type="text" name="txtfe" class="form-control">
                  </div>
                  
                  <div class="form-group">
                      <label>Tematica:</label>
                      <input type="text" name="txtTe" class="form-control">
                  </div>
                 
                </form>
             <input type="submit" name ="accion"value="Agregar" class="btn btn-info" > 
            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
            </div>
            
        </div>
                
        <div class=" col-sm-10">
             
            
            <table class="table table-hover">
                <thead>
                    <tr>
                <th>ID</th>      
                <th>FECHA</th> 
                <th>AUTOR</th>
                <th>TEMATICA</th>
                <th>ACCIONES</th>
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
                             <a class="btn btn-warning " href="">Editar</a>
                             <a class="btn btn-danger" href="">Delete</a>
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