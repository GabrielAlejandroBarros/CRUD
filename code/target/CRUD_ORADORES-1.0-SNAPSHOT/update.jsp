<%-- 
    Author     : Gabriel A. Barros
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificando orador...</title>
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
        <%  Connection con;
                String url="jdbc:mysql://localhost:3306/oradores";
                String Driver="com.mysql.jdbc.Driver";
                String user="root";
                String clave="Elrichmc7";
                Class.forName(Driver);
                con=DriverManager.getConnection(url,user,clave);
                //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
                PreparedStatement ps;
                ResultSet rs;
                int id=Integer.parseInt(request.getParameter("id"));
                ps=con.prepareStatement("select * from orador where id="+id);
                rs=ps.executeQuery();
                while(rs.next()){
            %>         
            <main class="sec">                   
            <div>
                <h1>Modificar orador</h1>
                <form action="" method="post" >    
                    <input type="text" name="txtNombre" class="form-control" value="<%= rs.getString("nombre")%>"/><br>
                    <input type="text" name="txtApellido" class="form-control" value="<%= rs.getString("apellido")%>"/><br>
                    <input type="email" name="txtMail" class="form-control" value="<%= rs.getString("mail")%>"/><br> 
                    <input type="text" name="txtTema" class="form-control" value="<%= rs.getString("tema")%>"/><br>
                    <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>                
                    <a href="lista.jsp" class="paginas">Regresar</a>
                </form>
                <% } %>    
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
        <script src="assets/js/theme.js"></script>
    </body>
</html>
<%
    String n,a,m,t;
       n=request.getParameter("txtNombre");
       a=request.getParameter("txtApellido");
       m=request.getParameter("txtMail");
       t=request.getParameter("txtTema");              
       if(n!=null && a!=null && m!=null && t!=null){
           ps=con.prepareStatement("update orador set nombre='"+n+"', apellido='"+a+"', mail='"+m+"', tema='"+t+"'where id="+id);
           ps.executeUpdate();
           response.sendRedirect("lista.jsp");
       }
       
       
%>