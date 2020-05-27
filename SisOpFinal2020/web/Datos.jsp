<%-- 
    Document   : Datos
    Created on : 27/05/2020, 05:21:00 PM
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
        <h1>REGISTRO DE INTEGRANTES</h1>
        <form action ="Resultado.jsp" method ="post">
            Nombres: <input type="text" name="txtNombre"><br>
            Apellidos <input type="text" name="txtApellido"><br>
            Codigo <input type="text" name="txtCodigo"><br>
            <input type="submit" name="btnEnviar" value="Enviar Datos">
        </form>
    </body>
</html>
