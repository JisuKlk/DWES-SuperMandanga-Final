<%-- 
    Document   : addform
    Created on : 13 de nov. 2023, 16:30:44
    Author     : alumne_2n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="institutmvmdaw.dwes_mvc.Juegos" %>
<%@ page import="institutmvmdaw.dwes_mvc.JuegosServicio" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Form</h1>

        <% for (Juegos juego : (List<Juegos>) request.getAttribute("games_list")) {%>
        <table>
            <tr>
                <td><%= juego.getName()%></td>
                <td><a href="JuegosServlet?id=<%= juego.getId()%>">Details...</a></td>
                <td><a href="JuegosServlet?id=<%= juego.getId()%>&action=delete">Delete</a></td>
                <td><a href="JuegosServlet?id=<%= juego.getId()%>&action=update">Update</a></td>
            </tr>
            <tr>
                <td><a href="JuegosServlet">Salir</a></td>
            </tr>
        </table>

        <% }%>
    </body>
</html>
