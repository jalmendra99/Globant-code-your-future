/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

 */
package desafiogrupal3.entidades;

public class Cliente {

    // Atributos
    //////static int next_id = 0; // next_id es estático y se comparte entre todos los elementos de la clase
    private int id;
    private String nombre;
    private int edad;
    private double altura;
    private double peso;
    private String objetivo;

    // Constructores
    public Cliente() {
    }

    public Cliente(int id, String nombre, int edad, double altura, double peso, String objetivo) {
        this.id = id;
        this.nombre = nombre;
        this.edad = edad;
        this.altura = altura;
        this.peso = peso;
        this.objetivo = objetivo;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }

}
