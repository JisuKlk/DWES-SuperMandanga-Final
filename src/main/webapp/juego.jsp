<%--
    Document   : producto.jsp
    Created on : 11 nov 2022, 0:21:15
    Author     : manuc
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="institutmvmdaw.dwes_mvc.Juegos" %>
<%@ page import="institutmvmdaw.dwes_mvc.JuegosServicio" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.List" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SuperMandanga2024</title>
        <link rel="stylesheet" href="css.css">
    </head>
    <body>
        <%
            if (request.getAttribute("single_game") != null) {
                Juegos juegos = (Juegos) request.getAttribute("single_game");
        %>

        <h1>Game detail</h1>
        <div>ID: <%= juegos.getId()%></div>
        <div>Name: <%= juegos.getName()%></div>
        <div>Price: $ <%= new DecimalFormat("#0.00").format(juegos.getPrice())%></div>
        <div>Year: <%= juegos.getYear()%></div>
        <div>Developer: <%= juegos.getDeveloper()%></a></div>
        <div>Genre: <%= juegos.getGenre()%></div>
        <div>Rating: <%= new DecimalFormat("#0.00").format(juegos.getRating())%></div>
        <div><a href="JuegosServlet">Go Back</a></div>

        <% } else { %>

        <h1>SuperMandangaJaraList</h1>
        <table>
            <tr>
                <td><b>Name</b></td>
                <td><b>Options</b></td>
            </tr>

            <% for (Juegos juego : (List<Juegos>) request.getAttribute("games_list")) {%>

            <tr>
                <td><%= juego.getName()%></td>
                <td><a href="JuegosServlet?id=<%= juego.getId()%>">Details...</a></td>
                <td><a href="JuegosServlet?id=<%= juego.getId()%>&action=delete">Delete</a></td>
                <td><a href="JuegosServlet?id=<%= juego.getId()%>&action=update">Update</a></td>
            </tr>
            <% } %>
            <tr><td><a href="JuegosServlet?action=addform">+ Añadir +</a></td></tr>
            <tr><td><a href="JuegosServlet?action=all">Ver todo</a></td></tr>
            <% } %>

        </table>
    </body>
</html>
