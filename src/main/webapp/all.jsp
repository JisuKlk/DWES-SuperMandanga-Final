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

        <% for (Juegos juego : (List<Juegos>) request.getAttribute("games_list")) {%>
        <h1>Product Details</h1>
        <div>ID: <%= juego.getId()%></div>
        <div>Name: <%= juego.getName()%></div>
        <div>Price: $ <%= new DecimalFormat("#0.00").format(juego.getPrice())%></div>
        <div>Year: <%= juego.getYear()%></div>
        <div><a href="JuegosServlet?developer=<%= juego.getDeveloper()%>&action=filtro">Developer: <%= juego.getDeveloper()%></a></div>
        <div>Genre: <%= juego.getGenre()%></div>
        <div>Rating: <%= new DecimalFormat("#0.00").format(juego.getRating())%></div>
        <div><a href="JuegosServlet">Go Back</a></div>
        <% } %>

    </body>
</html>
