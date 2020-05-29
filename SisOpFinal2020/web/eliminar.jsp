
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisOp Final 2020</title>
    </head>
    <body>
        <%
         
            int ID=Integer.parseInt(request.getParameter("ID"));
            
            Connection con=null;
            Statement sta=null;
            ResultSet rs=null;
            try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/so2020?user=jhonny&password=962011");
            
            sta=con.createStatement();
            sta.executeUpdate("delete from empleados where emp_id='"+ID+"'");
            request.getRequestDispatcher("Listado.jsp").forward(request, response);
            }
            catch(Exception e)
            {
                out.print("ERROR: "+e);
            }
            
            %>
    </body>
</html>
