/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package institutmvmdaw.dwes_mvc;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author manuc
 */
public class JuegosServicio {

    JuegosDAO juegosDAOservice = new JuegosDAO();
    int contJuegos = 0;

    public List<Juegos> getJuegos() {
        return juegosDAOservice.findAllJuegos();
    }

    /**
     *
     * @param id
     * @return
     */
    public Juegos getJuego(int id) {
        Juegos juego = null;
        try {
            juego = juegosDAOservice.findJuegoById(id);
        } catch (Exception ex) {
            Logger.getLogger(JuegosServicio.class.getName()).log(Level.SEVERE, null, ex);
        }

        return juego;
    }

    public void addProduct(String name, float price, int year, String developer, String genere, float valoracion) {
        int id = contJuegos + 1;
        contJuegos += 1;
        try {
            juegosDAOservice.createUser(name, price, year, developer, genere, valoracion);
        } catch (Exception ex) {
            Logger.getLogger(JuegosServicio.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void updateProduct(int id, String name, float price, int year, String developer, String genere, float valoracion) {
        try {
            juegosDAOservice.updateUser(id, name, price, year, developer, genere, valoracion);
        } catch (Exception ex) {
            Logger.getLogger(JuegosServicio.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void deleteGame(int id) {
        Juegos juego = null;
        List<Juegos> listaJuegos = juegosDAOservice.findAllJuegos();

        for (int i = 0; i < listaJuegos.size(); i++) {
            if (listaJuegos.get(i).getId() == id) {
                juego = listaJuegos.get(i);
                try {
                    juegosDAOservice.deleteJuego(juego);
                } catch (Exception ex) {
                    Logger.getLogger(JuegosServicio.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

        for (int i = id; i < listaJuegos.size(); i++) {
            if (listaJuegos.get(i).getId() != 0) {
                int id1 = listaJuegos.get(i).getId() - 1;
                listaJuegos.get(i).setId(id1);
            }
        }
        contJuegos -= 1;
    }

    public void updateGame(int id, String name, float price, int year, String developer, String genere, float valoracion) {

        deleteGame(id);
        updateProduct(id, name, price, year, developer, genere, valoracion);

    }

}
