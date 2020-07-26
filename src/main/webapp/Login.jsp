<%-- 
    Document   : Login
    Created on :  jul. 2020, 15:59:03
    Author     : Anderson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" >
        <title>JSP Page</title>
       
        <script>
            function Ingreso(){
               



      window.document.login.action="<%=request.getContextPath()%>/LoginServlet";
      window.document.login.method="GET";
      window.document.login.submit();
}
        </script>
    
    </head>
    <body>
    <div>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10"> 
                <div class="logo-image">
                    <center>
                        <img src="img/logo.jpg" alt="logo" title="logo" width="50%"/>
                         <p><strong>Bienvenidos al Login</strong></p>
                    </center>
                </div>

                   

                <form action="" name="login" method="" class="" role="form">
                    <div id="form-login-username" class="form-group">
                        <label for="username" class="float-label">Usuario:</label>
                        <input id="username" class="form-control" name="usuario" type="text" placeholder="Ingrese Usuario" size="18" alt="login" required />
                        <span class="form-highlight"></span>
                        <span class="form-bar"></span>
                       
                    </div>
                    <div id="form-login-password" class="form-group">
                        <label for="password" class="float-label">Contraseña</label>
                        <input id="passwd" class="form-control" name="clave" type="password" placeholder="Password" size="18" alt="password" required>
                        <span class="form-highlight"></span>
                        <span class="form-bar"></span>
                        
                    </div>
                    <div id="form-login-remember" class="form-group">

                    </div>
                    <div>
                        
                        <button  class="btn btn-block btn-info ripple-effect" onclick="Ingreso()" type="button" name="Submit" alt="sign in">Ingresar</button>  
                    </div>

            </div>
        </form>
    </div>
</div>
        <div>
            <center>
                <img src="img/alumno.png" alt="60" width="60"/><a  href="principalAlumno.jsp">INGRESO PARA EL ALUMNO ==></a>
                
            </center>
        </div>
        
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
