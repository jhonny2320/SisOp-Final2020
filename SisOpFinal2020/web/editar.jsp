
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisOp Final 2020</title>
    </head>
    <body>
        <h2 align="center">EDITAR DATOS DEL INTEGRANTE</h2>
        <form action="">
            <%
                int id=Integer.parseInt(request.getParameter("Iden"));
                
                
                    Connection con=null;
                    Statement sta=null;
                    ResultSet rs=null;
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection
                ("jdbc:mysql://localhost/so2020?user=jhonny&password=962011");
                    
                    sta=con.createStatement(); 
                    rs=sta.executeQuery("SELECT * FROM empleados where emp_id="+id+"");
                    
                    while(rs.next()){                                
                %>
        
            <table border="1" width="250" aling="center">
                
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="txtId" value="<%=rs.getString(1)%>" readonly="readonly"</td>
                </tr>
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" name="txtNom" value="<%=rs.getString(2)%>"</td>
                </tr>
                <tr>
                    <td>Apellido: </td>
                    <td><input type="text" name="txtApell" value="<%=rs.getString(3)%>"</td>
                </tr>
                <tr>
                    <td>Tipo de Documento: </td>
                    <td><input type="text" name="txtTD"value="<%=rs.getString(4)%>"</td>
                </tr>
                <tr>
                    <td>Documento: </td>
                    <td><input type="text" name="txtDocum" value="<%=rs.getString(5)%>"</td>
                </tr>
                <tr>
                    <td>Direccion: </td>
                    <td><input type="text" name="txtDire" value="<%=rs.getString(6)%>"</td>
                </tr>
                <tr>
                    <td>Telefono </td>
                    <td><input type="text" name="txtTel" value="<%=rs.getString(7)%>"</td>
                </tr>
                <tr>
                    
                    <th colspan="2">
                        <input type="submit" name="btnGrabar" value="Editar Integrante"></td>
                </tr>
                
            </table>
            
        </form>
                    <%
                        }
                }catch(Exception e){}


        if(request.getParameter("btnGrabar")!=null)
        {
            int ID=Integer.parseInt(request.getParameter("txtId"));
            String Nom=request.getParameter("txtNom");
            String Apell=request.getParameter("txtApell");
            int TD=Integer.parseInt(request.getParameter("txtTD"));    
            int Doc=Integer.parseInt(request.getParameter("txtDocum"));
            String Dir=request.getParameter("txtDire");
            int Tel=Integer.parseInt(request.getParameter("txtTel"));
            
            sta.executeUpdate("update empleados set emp_nombre='"+Nom
                                +"',emp_apellido='"+Apell+"',emp_idtipodocumento='"+TD
                                +"',emp_documento='"+Doc+"',emp_direccion='"+Dir
                                +"',emp_telefono='"+Tel+"' where emp_id='"+ID+"'");
            
            request.getRequestDispatcher("Listado.jsp").forward(request, response);
}
                    %>                           
    </body>
    
</html>
