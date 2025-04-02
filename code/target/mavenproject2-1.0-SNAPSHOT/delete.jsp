<%-- 
    Author     : Gabriel A. Barros
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar orador</title>
    </head>
    <body>        
     <% Connection con;
        String url="jdbc:mysql://localhost:3306/oradores";
        String Driver="com.mysql.jdbc.Driver";
        String user="root";
        String clave="Elrichmc7";
        Class.forName(Driver);
        con=DriverManager.getConnection(url,user,clave);
        //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
        PreparedStatement ps;     
        int id=Integer.parseInt(request.getParameter("id"));
        ps=con.prepareStatement("delete from orador where id="+id);
        ps.executeUpdate();
        response.sendRedirect("lista.jsp");
       
       %>
    </body>
</html>
