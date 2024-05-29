/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package institutmvmdaw.dwes_mvc;

/**
 *
 * @author manuc
 */
public class Juegos {
    private int id;
    private String name;
    private float price;
    private int year;
    private String developer;
    private String genere;
    private float valoracion;

    public Juegos(int id, String name, float price, int year, String developer, String genere, float valoracion) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.year = year;
        this.developer = developer;
        this.genere = genere;
        this.valoracion = valoracion;
    }
    
    public Juegos(){
        this.id = -1;
        this.name = "";
        this.price = 0f;
        this.year = 0;
        this.developer = "";
        this.genere = "";
        this.valoracion = 0;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getDeveloper() {
        return developer;
    }

    public void setDeveloper(String developer) {
        this.developer = developer;
    }
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
 
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
 
    public float getPrice() {
        return price;
    }
    public void setPrice(float price) {
        this.price = price;
    }
    public float getValoracion() {
        return valoracion;
    }
    public void setValoracion(float valoracion) {
        this.valoracion = valoracion;
    }
    public String getGenere() {
        return genere;
    }
    public void setGenere(String genere) {
        this.genere = genere;
    }
}
