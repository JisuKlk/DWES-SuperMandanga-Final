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
        <h1>Add SuperMandanga2024</h1>

        <%
        if (request.getAttribute("single_game") != null) {
            Juegos juegos = (Juegos)request.getAttribute("single_game");
        %>
        <form name="addform" action="JuegosServlet" method="POST">
           <table>
               <tr><td>Name</td></tr><tr><td><input type="text" name="name" value="<%= juegos.getName()%>"></td></tr>
               <tr><td>Price</td></tr><tr><td><input type="text" name="price" value="<%= juegos.getPrice()%>"></td></tr>
               <tr><td>Year</td></tr><tr><td><input type="text" name="year" value="<%= juegos.getYear()%>"></td></tr>
               <tr><td>Developer</td></tr><tr><td><input type="text" name="developer" value="<%= juegos.getDeveloper()%>"></td></tr>
               <tr><td>Genre</td></tr><tr><td><input type="text" name="genre" value="<%= juegos.getGenre()%>"></td></tr>
               <tr><td>Rating</td></tr><tr><td><input type="text" name="rating" value="<%= juegos.getRating()%>"></td></tr>
               </table>
               <input type="hidden" name="id" value="<%= juegos.getId()%>">
               <input type="hidden" name="action" value="updateId">
               <input type="submit" name="submit" value="update">
            <a href="JuegosServlet">Exit</a>
        </form>
               <%}%>
    </body>
</html>
