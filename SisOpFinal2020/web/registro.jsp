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
        <h2 aling="center">REGISTRO DE INTEGRANTES</h2>
        <form action="">
            <table border="1" width="250" aling="center">
                
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="txtId"</td>
                </tr>
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" name="txtNom"</td>
                </tr>
                <tr>
                    <td>Apellido: </td>
                    <td><input type="text" name="txtApell"</td>
                </tr>
                <tr>
                    <td>Tipo de Documento: </td>
                    <td><input type="text" name="txtTD"</td>
                </tr>
                <tr>
                    <td>Documento: </td>
                    <td><input type="text" name="txtDocum"</td>
                </tr>
                <tr>
                    <td>Direccion: </td>
                    <td><input type="text" name="txtDire"</td>
                </tr>
                <tr>
                    <td>Telefono </td>
                    <td><input type="text" name="txtTel"</td>
                </tr>
                <tr>
                    
                    <th colspan="2">
                        <input type="submit" name="btnGuardar" value="Guardar Integrante"></th>
                </tr>
                
            </table>
            
        </form>
        
        <! guardar datos en BD>
        
        <%
            if(request.getParameter("btnGuardar")!=null)
            {
                int ID=Integer.parseInt(request.getParameter("txtId"));
            String Nom=request.getParameter("txtNom");
            String Apell=request.getParameter("txtApell");
            int TD=Integer.parseInt(request.getParameter("txtTD"));    
            int Doc=Integer.parseInt(request.getParameter("txtDocum"));
            String Dir=request.getParameter("txtDire");
            int Tel=Integer.parseInt(request.getParameter("txtTel"));
            
            Connection con=null;
            Statement sta=null;
            ResultSet rs=null;
            try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/so2020?user=jhonny&password=962011");
            
            sta=con.createStatement();
            sta.executeUpdate("insert into empleados values('"+ID+"','"+Nom+"','"+Apell+"','"+TD+"','"+Doc+"','"+Dir+"','"+Tel+"')");
            request.getRequestDispatcher("Listado.jsp").forward(request, response);
            }
            catch(Exception e)
            {
                out.print("ERROR: "+e);
            }
            }
            %>

    </body>
</html>
