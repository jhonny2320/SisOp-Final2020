<%-- 
    Document   : Resultado
    Created on : 27/05/2020, 05:21:18 PM
    Author     : jhonatan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INTEGRANTES</title>
    </head>
    <body>
        <h1>LISTA DE INTEGRANTES</h1>
        <%
            String Nom=request.getParameter("txtNombre");
            String Apell=request.getParameter("txtApellido");
            int Codi=Integer.parseInt(request.getParameter("txtCodigo"));
            
            
            %>
            Nombre: <%=Nom%><br>
            Apellido: <%=Apell%><br>
            Codigo: <%=Codi%><br>
            
            <a href="Datos.jsp">
                Volver a Principal
            </a>
    </body>
</html>
