<%--
    Document   : addform
    Created on : 13 de nov. 2023, 16:30:44
    Author     : alumne_2n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add SuperMandanga2024</h1>

        <form name="addform" action="JuegosServlet" method="POST">
           <table>
               <tr><td>Name</td></tr><tr><td><input type="text" name="name"></td></tr>
               <tr><td>Price</td></tr><tr><td><input type="text" name="price"></td></tr>
               <tr><td>Year</td></tr><tr><td><input type="text" name="year"></td></tr>
               <tr><td>Developer</td></tr><tr><td><input type="text" name="developer"></td></tr>
               <tr><td>Genre</td></tr><tr><td><input type="text" name="genre"></td></tr>
               <tr><td>Rating</td></tr><tr><td><input type="text" name="rating"></td></tr>
               </table>
            <input type="hidden" name="action" value="add">
            <input type="submit" name="submit" value="add">
            <a href="JuegosServlet">Exit</a>
        </form>
    </body>
</html>
