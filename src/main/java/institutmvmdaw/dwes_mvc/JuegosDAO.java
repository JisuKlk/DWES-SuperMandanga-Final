/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package institutmvmdaw.dwes_mvc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import institutmvmdaw.connection.DBConnection;

/**
 *
 * @author alumne_2n
 */
public class JuegosDAO {

    private DBConnection dBConnection;
    private Connection connection;

    public DBConnection getDBConnection() {
        return this.dBConnection;
    }

    public JuegosDAO() {
        this.dBConnection = new DBConnection("db-test.properties");
    }

    public JuegosDAO(DBConnection dBConnection) {
        this.dBConnection = dBConnection;
    }

    private Juegos findUniqueResult(String query) throws Exception {
        List<Juegos> users = executeQuery(query);
        if (users.isEmpty()) {
            return null;
        }
        if (users.size() > 1) {
            throw new Exception("Only one result expected");
        }
        return users.get(0);
    }

    private List<Juegos> executeQuery(String query) {
        List<Juegos> listaJuegos = new ArrayList<>();

        if (getConnection() == null) {
            try {
                setConnection(dBConnection.getConnection());
            } catch (SQLException | IOException e) {
                e.printStackTrace();
            }
        }
        try (
                Statement stmt = getConnection().createStatement();
                ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                Juegos Juego = buildUserFromResultSet(rs);
                listaJuegos.add(Juego);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaJuegos;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public List<Juegos> findAllJuegos() {
        String qry = "select id, name, price, year, developer, genre, rating from juegos";
        List<Juegos> listaJuegos = executeQuery(qry);
        return listaJuegos;
    }

    public Juegos findJuegoById(int id) throws Exception {
        String qry = "select * from juegos where id ='" + id + "'";
        return findUniqueResult(qry);
    }

    public Juegos findJuegoByYear(String juegoYear) throws Exception {
        String qry = "select * from juegos where year ='" + juegoYear + "'";
        return findUniqueResult(qry);
    }

    public Juegos findJuegoByName(String name) throws Exception {
        String qry = "select * from juegos where name ='" + name + "'";
        return findUniqueResult(qry);
    }

    private Juegos buildUserFromResultSet(ResultSet rs) throws SQLException {
        int id = rs.getInt("id");
        String name = rs.getString("name");
        float price = rs.getFloat("price");
        int year = rs.getInt("year");
        String developer = rs.getString("developer");
        String genre = rs.getString("genre");
        float rating = rs.getFloat("rating");
        Juegos juego = new Juegos(id, name, price, year, developer, genre, rating);
        return juego;
    }

    private Juegos createOrUpdateJuego(String name, String query) throws Exception {
        int result = executeUpdateQuery(query);
        if (result == 0) {
            throw new Exception("Error creating user");
        }
        return findJuegoByName(name);
    }

    public Juegos createUser(String name, float price, int year, String developer, String genre, float rating)
            throws Exception {
        String qry = "INSERT INTO juegos (name, price, year, developer, genre, rating) VALUES ('"
                + name + "', '"
                + price + "', '"
                + year + "', '"
                + developer + "', '"
                + genre + "', '"
                + rating + "'"
                + ");";
        return createOrUpdateJuego(name, qry);
    }

    public Juegos updateUser(int id, String name, float price, int year, String developer, String genre,
            float rating) throws Exception {
        String qry = "INSERT INTO juegos (id, name, price, year, developer, genre, rating) VALUES ('"
                + id + "', '"
                + name + "', '"
                + price + "', '"
                + year + "', '"
                + developer + "', '"
                + genre + "', '"
                + rating + "'"
                + ");";
        return createOrUpdateJuego(name, qry);
    }

    private int executeUpdateQuery(String query) {
        int result = 0;
        if (getConnection() == null) {
            try {
                setConnection(dBConnection.getConnection());
            } catch (SQLException | IOException e) {
                e.printStackTrace();
            }
        }
        try (
                Statement stmt = getConnection().createStatement()) {
            result = stmt.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public Juegos updateUserEmail(String name, String newYear) throws Exception {
        String qry = "UPDATE juegos "
                + "SET year = '" + newYear + "' "
                + "WHERE name = '" + name + "' "
                + ";";
        return createOrUpdateJuego(name, qry);
    }

    public void deleteJuego(Juegos juego) throws Exception {
        String query = "DELETE FROM juegos WHERE id = '" + juego.getId() + "' ";
        createOrUpdateJuego(juego.getName(), query);
    }

}
