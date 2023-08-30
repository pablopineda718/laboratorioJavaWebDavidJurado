<%-- 
    Document   : paginaDestino
    Created on : 29 ago 2023, 18:32:03
    Author     : estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>solicitud recibida</title>
    </head>
    <body>
        <h1>Solicitud recibida</h1>
        <h2>Tus datos son:</h2>
        <p>Tu nombre es: <%= request.getParameter("nombre") %></p>
        <p>Apellido: <%= request.getParameter("apellido") %></p>
        <p>Tu correo es: <%= request.getParameter("correo") %></p>
        <p>Eres: <%= request.getParameter("genero") %></p>

        <%
        String[] habilidades = request.getParameterValues("habilidades");
        if (habilidades != null && habilidades.length > 0) {
        %>

        <p>Manejas los siguientes lenguajes de programación:</p>
            <ul>
                <% for (String habilidad : habilidades) { %>
                    <li><%= habilidad %></li>
                <% } %>
            </ul>
        <% } else {
        %>
            <p>No se recibió datos</p>
        <%
        } %>

        <%
        String[] idiomas = request.getParameterValues("idiomas");
        if (idiomas != null && idiomas.length > 0) {
        %>
            <p>Los idiomas que comprendes son:</p>
            <ul>
                <% for (String idioma : idiomas) { %>
                    <li><%= idioma %></li>
                <% } %>
            </ul>
        <%
        } else {
        %>
            <p>No se recibió datos</p>
        <%
        }
        %>

        <%
        String comentarios = request.getParameter("comentarios");
        if (comentarios != null && !comentarios.isEmpty()) {
        %>
            <p>Comentarios adicionales:</p>
            <p><%= comentarios %></p>
        <%
        }
        %>
    </div>
    <br>
    <form action="index.jsp">
        <input type="submit" value="Regresar">
   </form>
        
        
    </body>
</html>
