<%-- 
    Author     : Gabriel A. Barros
--%>
<%@page import="dao.OradorDAO"%>
<%@page import="model.Orador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/styles.css"/>
    </head>
    <body  id="contenido" class="modo-claro">
        <header class="alto">
            <span class="separacion codo"><a href="index.jsp" class="paginas">Codo a codo</a></span>
            <span class="separacion"><a class="paginas" href="alta.jsp">Alta</a></span>
            <span class="separacion"><a class="paginas" href="lista.jsp">Listado</a></span>
            <span class="separacion"> <button id="modoOscuroBtn">Cambiar Modo</button></span>
        </header>          
               
        <main>               	
            <div class="sec">
                <h1>ALTA</h1>
                <form class="row g-1">     
                    <div class="col-md-12">
                        <input type="text" id="nombre" class="form-control" placeholder="Nombre" name="txtNombre" min="4" required />              
                    </div>
                    <div class="col-md-12">
                      <input type="text" id="apellido" class="form-control" placeholder="Apellido" name="txtApellido" min="4" required/>  
                    </div>          
                    <div class="col-12 margin-bottom">
                      <input type="email" id="correo" class="form-control" placeholder="Correo" name="txtMail" required/>              
                    </div>    
                    <div class="col-12 margin-bottom">
                        <input type="text" id="tema" class="form-control" placeholder="Tema" name="txtTema" required/>              
                    </div>   
                    <div class="col-12">
                        <button id="botonAlta" type="submit" class="btn btn-primary custom-btn col-md-12">Dar alta</button>                         
                        <%                                
                            String nombre= request.getParameter("txtNombre");
                            String ape= request.getParameter("txtApellido");
                            String mail= request.getParameter("txtMail");
                            String tema= request.getParameter("txtTema");
                            Orador ora= new Orador(nombre, ape, mail, tema);
                            OradorDAO odao= new OradorDAO();
                            odao.insertarOrador(ora);                        
                        %>              
                    </div>                                         
                </form> 
            </div>       
        </main>
        
        <footer>
            <span class="icono separacion">
                <a href="https://www.linkedin.com/in/gabriel-barros-3ba45a21b/" target="_blank">
                    <img src="assets/img/linkedin.svg" alt="linkedin logo"/>
                </a>
            </span>
            <span class="icono separacion">    
                <a href="https://www.instagram.com/" target="_blank">
                    <img src="assets/img/instagram.svg" alt="instagram logo"/>
                </a>
            </span>
            <span class="icono separacion">
                <a href="https://twitter.com/home" target="_blank">
                    <img src="assets/img/twitter.svg" alt="twitter logo"/>
                </a>
            </span>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>  
        <script src="assets/js/script.js"></script>
        <script src="assets/js/theme.js"></script>
    </body>
</html>
