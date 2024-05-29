/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package institutmvmdaw;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import institutmvmdaw.connection.DBConnection;
import institutmvmdaw.dwes_mvc.Juegos;
import institutmvmdaw.dwes_mvc.JuegosDAO;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author dwes
 */
public class JuegosDAOTest {
/*
    private DBConnection dBConnection;
    private String connectionProperties = "db-test.properties";
    JuegosDAO juegosDAO;

    @Before
    public void setUp() {
        dBConnection = new DBConnection(connectionProperties);
        juegosDAO = new JuegosDAO(dBConnection);
    }

    @After
    public void tearDown() throws IOException, SQLException {
        juegosDAO.getConnection().close();
    }

    @Test
    public void findAllUsers() {
        //UserDAO userDAO = new UserDAO(dBConnection);
        List<Juegos> users = juegosDAO.findAllJuegos();
        Assert.assertEquals("Hauriem de tenir 2 usuaris a la base de dades", 2, users.size());
    }

    public Juegos findUserByEmail(String userEmail) {
        String qry = "select * from users where email =' " + userEmail + " ' ";

        Juegos user = null;
        try (
                Connection conn = dBConnection.getConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(qry);) {
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                float price = rs.getFloat("price");
                int year = rs.getInt("year");
                String developer = rs.getString("developer");
                String genere = rs.getString("genere");
                float valoracion = rs.getFloat("valoracion");
                Juegos juegos = new Juegos(id, name, price, year, developer, genere, valoracion);
            }
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Test
    public void createUser() throws Exception {
        String name = "Factorio";
        float price = 32;
        int year = 2020;
        String developer = "Wube Software LTD";
        String genere = "Automatización";
        float valoracion = 1;
        //UserDAO userDAO = new UserDAO(dBConnection);
        Juegos createdJuego = juegosDAO.createUser(name, price, year, developer, genere, valoracion);
        Assert.assertNotNull(createdJuego);
        Assert.assertEquals(name, createdJuego.getName());
        Assert.assertNotEquals(0, createdJuego.getId());
    }

    @Test(expected = Exception.class)
    public void createUserWithError() throws Exception {
        String name = "Factorio";
        float price = 32;
        int year = 2020;
        String developer = "Wube Software LTD";
        String genere = "Automatización";
        float valoracion = 1;
        //UserDAO userDAO = new UserDAO(dBConnection);
        Juegos createdJuego = juegosDAO.createUser(name, price, year, developer, genere, valoracion);
        Assert.assertNull(createdJuego);
    }

    @Test
    public void deleteUser() throws Exception {
        String name = "Factorio";
        float price = 32;
        int year = 2020;
        String developer = "Wube Software LTD";
        String genere = "Automatización";
        float valoracion = 1;
        Juegos createdJuego = juegosDAO.createUser(name, price, year, developer, genere, valoracion);
        Assert.assertNotNull(createdJuego);
        juegosDAO.deleteJuego(createdJuego);
        Juegos deletedUser = juegosDAO.findJuegoByName(name);
        Assert.assertNull(deletedUser);
    }
*/
}
