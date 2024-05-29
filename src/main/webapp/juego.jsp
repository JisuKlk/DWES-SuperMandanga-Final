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
        <div><a href="JuegosServlet?developer=<%= juegos.getDeveloper()%>&action=filtro">Developer: <%= juegos.getDeveloper()%></a></div>
        <div>Genre: <%= juegos.getGenere()%></div>
        <div>Rating: <%= new DecimalFormat("#0.00").format(juegos.getValoracion())%></div>
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
            <tr><td><a href="JuegosServlet?action=addform">+ Añadir</a></td></tr>
            <tr><td><a href="JuegosServlet?action=all">Ver todo</a></td></tr>
            <tr>
                <td>
                    <button onclick="borrarHidden()">Filtrar</button>
                    <div id="divFiltro" class="hidden">
                    <div><button onclick="borrarHiddenId()">Filtrar por Id</button></div>
                    <div><button onclick="borrarHiddenName()">Filtrar por Name</button></div>
                    <div><button onclick="borrarHiddenPrice()">Filtrar por Price</button></div>
                    <div><button onclick="borrarHiddenYear()">Filtrar por Year</button></div>
                    <div><button onclick="borrarHiddenDeveloper()">Filtrar por Developer</button></div>
                    <div><button onclick="borrarHiddenValoracion()">Filtrar por Valoracion</button></div>
                    </div>
                        <div id="divFiltroId" class="hidden">
                            <form name="addform" action="JuegosServlet" method="POST">
                                <table>
                                    <h3>Filter</h3>
                                    <tr><td>Id</td></tr><tr><td><input type="text" name="id"></td></tr>
                                </table>
                                <input type="hidden" name="action" value="filtro">
                                <input type="submit" name="submit" value="Filtrar">
                                <a href="JuegosServlet">Exit</a>
                            </form>
                        </div>
                        <div id="divFiltroName" class="hidden">
                            <form name="addform" action="JuegosServlet" method="POST">
                                <table>
                                    <h3>Filter</h3>
                                    <tr><td>Name</td></tr><tr><td><input type="text" name="name"></td></tr>
                                </table>
                                <input type="hidden" name="action" value="filtro">
                                <input type="submit" name="submit" value="Filtrar">
                                <a href="JuegosServlet">Exit</a>
                            </form>
                        </div>
                        <div id="divFiltroPrice" class="hidden">
                            <form name="addform" action="JuegosServlet" method="POST">
                                <table>
                                    <h3>Filter</h3>
                                    <tr><td>Price</td></tr><tr><td><input type="text" name="price"></td></tr>
                                </table>
                                <input type="hidden" name="action" value="filtro">
                                <input type="submit" name="submit" value="Filtrar">
                                <a href="JuegosServlet">Salir</a>
                            </form>
                        </div>
                        <div id="divFiltroYear" class="hidden">
                            <form name="addform" action="JuegosServlet" method="POST">
                                <table>
                                    <h3>Filter</h3>
                                    <tr><td>Year</td></tr><tr><td><input type="text" name="year"></td></tr>
                                </table>
                                <input type="hidden" name="action" value="filtro">
                                <input type="submit" name="submit" value="Filtrar">
                                <a href="JuegosServlet">Salir</a>
                            </form>
                        </div>
                        <div id="divFiltroDeveloper" class="hidden">
                            <form name="addform" action="JuegosServlet" method="POST">
                                <table>
                                    <h3>Filter</h3>
                                    <tr><td>Dev</td></tr><tr><td><input type="text" name="developer"></td></tr>
                                </table>
                                <input type="hidden" name="action" value="filtro">
                                <input type="submit" name="submit" value="Filtrar">
                                <a href="JuegosServlet">Salir</a>
                            </form>
                        </div>
                        <div id="divFiltroValoracion" class="hidden">
                            <form name="filtro" action="JuegosServlet" method="POST">
                                <table>
                                    <h3>Filter</h3>
                                    <tr><td>Rating</td></tr>
                                    <tr><td><input type="text" name="valoracionMin" placeholder="Min"></td><td><input type="text" name="valoracionMax" placeholder="Max"></td></tr>
                                </table>
                                <input type="hidden" name="action" value="filtro">
                                <input type="submit" name="submit" value="Filtrar">
                                <a href="JuegosServlet">Salir</a>
                            </form>
                        </div>


                </td>
            </tr>

            <%  }%>

        </table>
        <script>
            function borrarHiddenId() {
                var div = document.getElementById('divFiltroId');
                div.classList.remove('hidden');
            }
            function borrarHiddenName() {
                var div = document.getElementById('divFiltroName');
                div.classList.remove('hidden');
            }
            function borrarHiddenPrice() {
                var div = document.getElementById('divFiltroPrice');
                div.classList.remove('hidden');
            }
            function borrarHiddenYear() {
                var div = document.getElementById('divFiltroYear');
                div.classList.remove('hidden');
            }
            function borrarHiddenDeveloper() {
                var div = document.getElementById('divFiltroDeveloper');
                div.classList.remove('hidden');
            }
            function borrarHiddenValoracion() {
                var div = document.getElementById('divFiltroValoracion');
                div.classList.remove('hidden');
            }
            function borrarHidden() {
                var div = document.getElementById('divFiltro');
                div.classList.remove('hidden');
            }
        </script>
    </body>
</html>
