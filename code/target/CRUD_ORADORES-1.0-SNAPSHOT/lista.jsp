<%-- 
    Author     : Gabriel A. Barros
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Orador"%>
<%@page import="dao.OradorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista</title>
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
        <h1 class="sec">Lista oradores</h1>
        <main class="cuerpo"> 
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Mail</th>
                        <th>Tema</th>
                        <th>Borrar</th>
                        <th>Actualizar</th>
                    </tr>
                </thead>
                <%  OradorDAO dao = new OradorDAO();
                    List<Orador> usuarios = dao.selectOradores();
                    Orador o = null; 
                    Iterator<Orador> it = usuarios.iterator();
                    while(it.hasNext()){
                        o = it.next();
                        Long i = o.getId();
                        String nombre = o.getNombre();
                        String ape = o.getApellido();
                        String mail = o.getMail();
                        String tema =  o.getTema();
                %>               
                <tbody>                            
                    <td><%=i%></td>
                    <td><%=nombre%></td>
                    <td><%=ape%></td>
                    <td><%=mail%></td>
                    <td><%=tema%></td>                            
                    <td> 
                        <a class="icono paginas" href="delete.jsp?id=<%=i%>">                                    
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                                <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5"/>
                            </svg>                            
                        </a>
                    </td>
                    <td>
                        <a class="icono paginas" href="update.jsp?id=<%=i%>">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                            </svg>
                        </a>
                    </td>
                    <% } %>                  
                </tbody>
            </table>
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
        <script src="assets/js/theme.js"></script>
    </body>
</html>
