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
        <h1>Add Form</h1>
        <h2>Error de formato, porfavor introduce los datos correctamente</h2>
        
        <form name="addform" action="JuegosServlet" method="POST">
           <table>
               <tr><td>Name</td></tr><tr><td><input type="text" name="name"></td></tr>
               <tr><td>Price</td></tr><tr><td><input type="text" name="price"></td></tr>
               <tr><td>Year</td></tr><tr><td><input type="text" name="year"></td></tr>
               <tr><td>Developer</td></tr><tr><td><input type="text" name="developer"></td></tr>
               <tr><td>Gènere</td></tr><tr><td><input type="text" name="genere"></td></tr>
               <tr><td>Valoración</td></tr><tr><td><input type="text" name="valoracion"></td></tr>
               </table>
            <input type="hidden" name="action" value="add">
            <input type="submit" name="submit" value="add">    
            <a href="JuegosServlet">Salir</a>
        </form>
    </body>
</html>
