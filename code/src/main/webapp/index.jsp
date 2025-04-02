<%-- 
    Author     : Gabriel A. Barros
    CRUD
    Create Read Update Delete
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
    <head>
        <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/styles.css" />
    <link rel="stylesheet" href="assets/css/listadoStyles.css"/>
    </head>
    <body  id="contenido" class="modo-claro">
        <header class="alto">
            <span class="separacion codo"><a href="index.jsp" class="paginas">Codo a codo</a></span>
            <span class="separacion"><a class="paginas" href="alta.jsp">Alta</a></span>
            <span class="separacion"><a class="paginas" href="lista.jsp">Listado</a></span>
            <span class="separacion"> <button id="modoOscuroBtn">Cambiar Modo</button></span>
        </header>           
        
        <main class="sec">            
            <h1 >ABM DE ORADORES</h1> 
            <img src="assets/img/oradora2.jpg" alt="imagen de una oradora" width="100%"/>
            <p>
               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, ante lacinia ornare hendrerit, erat metus consequat metus, et interdum sem velit vel nibh. Etiam id varius justo. Quisque tempus luctus massa, sed luctus ante mollis at. Maecenas hendrerit purus in diam ultricies accumsan. Nam vel orci sed ex varius faucibus. Vestibulum aliquam rhoncus libero ac finibus. Donec tortor nulla, venenatis ut nibh id, hendrerit rhoncus mi. Donec quis fringilla massa. Mauris mollis rutrum interdum. Mauris neque velit, luctus a libero id, tempus placerat metus. Integer imperdiet iaculis arcu et auctor. Nulla suscipit sagittis lacus, rutrum eleifend risus bibendum at. Etiam in cursus ante. Etiam odio turpis, vestibulum nec dapibus sagittis, bibendum at lorem. Sed id felis eu tortor porta bibendum. Aenean elementum nunc ac blandit aliquet.
            </p>
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
