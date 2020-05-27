<%-- 
    Document   : Index
    Created on : 27/05/2020, 03:50:33 PM
    Author     : jhonatan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisOp Final 2020</title>
    </head>
    <body>
        <h1>DATOS DEL GRUPO</h1>
        <%
            String nombre="jhonatan";
            int edad=23;
            int codigo=561214213;
            
            out.println("Nombre: "+nombre+"<br>");
            out.println("Edad: "+edad+"<br>");
            out.println("Codigo: "+codigo+"<br>");
            %>
    </body>
</html>
