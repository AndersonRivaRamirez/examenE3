<%-- 
    Document   : FrmPrincipal
    Created on : 16-jul-2020, 15:03:34
    Author     : Anderson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-light bg-info">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a style="margin-left: 10px; border:none" class="btn btn-outline-light" href="FrmPrincipal.jsp">Inicio</a>            
       </li>
              
     
      <li class="nav-item"> 
          <a style="margin-left: 10px; border:none" class="btn btn-outline-light" href="<%=request.getContextPath()%>/EmpleadoServlet?menu=Empleado&accion=listar" target="myFrame">Registrar Libro</a>
     
      </li>
    
    </ul>
    
  </div>
    <div class="dropdown">
  <button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Seccion Login
  </button>
  <div class="dropdown-menu text-center">
    <a class="dropdown-item" href="#">
        <img src="img/usuario.png" alt="60" width="60"/>
        </a>
    <a class="dropdown-item" href="#">ADMINISTRADOR</a>
    
    <div class="dropdown-divider"></div>
    
        <a class="dropdown-item" href="Login.jsp">Salir</a>
       
  </div>
</div>

</nav>
        <div class="m-4" style="height: 550px">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none  "></iframe>
            
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>