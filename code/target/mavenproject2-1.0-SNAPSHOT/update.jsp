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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificando orador...</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/styles.css"/>
    </head>
    <body>
        <header class="alto">
            <span class="separacion codo"><a href="index.jsp" class="paginas">Codo a codo</a></span>
            <span class="separacion"><a class="paginas" href="alta.jsp">Alta</a></span>
            <span class="separacion"><a class="paginas" href="lista.jsp">Listado</a></span>
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
            <div>
                <a href="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="128" height="128" fill="black" class="bi bi-linkedin icono" viewBox="0 0 128 128">
                        <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401m-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4"/>
                    </svg>                    
                </a>
                <a href="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="128" height="128" fill="black" class="bi bi-instagram icono" viewBox="0 0 128 128">
                        <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334"/>
                    </svg>
                </a>
                <a href="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="128" height="128" fill="black" class="bi bi-twitter-x icono" viewBox="0 0 128 128">
                        <path d="M12.6.75h2.454l-5.36 6.142L16 15.25h-4.937l-3.867-5.07-4.425 5.07H.316l5.733-6.57L0 .75h5.063l3.495 4.633L12.601.75Zm-.86 13.028h1.36L4.323 2.145H2.865l8.875 11.633Z"/>
                    </svg>
                </a>
            </div>
        </footer>            
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>  
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