/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package institutmvmdaw.dwes_mvc;

import institutmvmdaw.dwes_mvc.JuegosServicio;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumne_2n
 */
@WebServlet(name = "JuegosServlet", urlPatterns = {"/JuegosServlet"})
public class JuegosServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    JuegosServicio service = new JuegosServicio();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (null == action) {
            String value = request.getParameter("id");
            if (value != null) {
                int id = Integer.parseInt(value);
                request.setAttribute("single_game", service.getJuego(id));
            } else {
                request.setAttribute("games_list", service.getJuegos());
            }
            getServletConfig().getServletContext().getRequestDispatcher("/juego.jsp").forward(request, response);
        } else {
            switch (action) {
                case "addform":
                    getServletConfig().getServletContext().getRequestDispatcher("/addform.jsp").forward(request, response);
                    break;
                case "add": {
                    try {
                        String name = request.getParameter("name");
                        float price = Float.parseFloat(request.getParameter("price"));
                        int year = Integer.parseInt(request.getParameter("year"));
                        String developer = request.getParameter("developer");
                        String genere = request.getParameter("genere");
                        float valoracion = Float.parseFloat(request.getParameter("valoracion"));
                        service.addProduct(name, price, year, developer, genere, valoracion);
                        request.setAttribute("games_list", service.getJuegos());
                        getServletConfig().getServletContext().getRequestDispatcher("/juego.jsp").forward(request, response);
                        break;
                    } catch (NumberFormatException e) {
                        getServletConfig().getServletContext().getRequestDispatcher("/addformError.jsp").forward(request, response);
                    }
                }
                case "delete": {
                    String value = request.getParameter("id");
                    int id = Integer.parseInt(value);
                    service.deleteGame(id);
                    request.setAttribute("games_list", service.getJuegos());
                    getServletConfig().getServletContext().getRequestDispatcher("/juego.jsp").forward(request, response);
                    break;
                }
                case "update": {
                    String value = request.getParameter("id");
                    int id = Integer.parseInt(value);
                    request.setAttribute("single_game", service.getJuego(id));
                    getServletConfig().getServletContext().getRequestDispatcher("/addform_1.jsp").forward(request, response);
                    break;
                }
                case "updateId": {
                    try {
                        int id = Integer.parseInt(request.getParameter("id"));
                        String name = request.getParameter("name");
                        float price = Float.parseFloat(request.getParameter("price"));
                        int year = Integer.parseInt(request.getParameter("year"));
                        String developer = request.getParameter("developer");
                        String genere = request.getParameter("genere");
                        float valoracion = Float.parseFloat(request.getParameter("valoracion"));
                        service.updateGame(id, name, price, year, developer, genere, valoracion);
                        request.setAttribute("games_list", service.getJuegos());
                        getServletConfig().getServletContext().getRequestDispatcher("/juego.jsp").forward(request, response);
                        break;
                    } catch (NumberFormatException e) {
                        String value = request.getParameter("id");
                        int id = Integer.parseInt(value);
                        request.setAttribute("single_game", service.getJuego(id));
                        getServletConfig().getServletContext().getRequestDispatcher("/addform_1Error.jsp").forward(request, response);
                    }
                }
                case "all":
                    request.setAttribute("games_list", service.getJuegos());
                    getServletConfig().getServletContext().getRequestDispatcher("/all.jsp").forward(request, response);
                    break;

                default:
                    break;
            }
        }

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JuegosServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet JuegosServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
