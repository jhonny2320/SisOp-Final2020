

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisOp Final 2020</title>
    </head>
    <body>
        <h1 align="center">listado de integrantes</h1>
        <table border="1" width="600" align="center">
            
            <tr bgcolor="skyblue">
                <th colspan="4">Mantenimiento de integrantes</th>
                <th><img src="iconos/agregar.png" width="60" height="60"</th>
            </tr>
            
            <tr bgcolor="skyblue">
                <th>Nombre</th><th>Apellido</th>
                <th>Tipo de Documento</th><th>Documento</th>
                <th>Accion</th>
                
                
            </tr>
            <%
                Connection con=null;
                Statement sta=null;
                ResultSet rs=null;
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection
                ("jdbc:mysql://localhost/so2020?user=jhonny&password=962011");
                    
                    sta=con.createStatement(); 
                    rs=sta.executeQuery("SELECT * FROM empleados");
                    
                    while(rs.next())
                    {
                            %>
                            <tr>
                                <th><%=rs.getString(2)%></th>
                                <th><%=rs.getString(3)%></th>
                                <th><%=rs.getString(4)%></th>
                                <th><%=rs.getString(5)%></th>
                                <th>
                                    <img src="iconos/editar.png" width="30" height="30"> ||
                                    <img src="iconos/eliminar1.png" width="30" height="30">
                                </th>
                                
                            </tr>
                            <%
                    }
                sta.close();
                rs.close();
                con.close();
                }
                catch(Exception e)
                {
                    out.println("error: "+e);
                }
            %>
    </body>
</html>
