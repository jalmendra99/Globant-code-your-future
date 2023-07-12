/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

 */
package desafiogrupal3.entidades;

public class Cliente {

    // Atributos
    public static int next_id = -1; // next_id es estático y se comparte entre todos los elementos de la clase
    
    private final int id; // Es constante. Se asigna una vez y no se modifica más.
    private String nombre;
    private int edad;
    private double altura;
    private double peso;
    private String objetivo;

    // Constructores
    public Cliente() {
        next_id++;
        id = next_id;
    }

    public Cliente(String nombre, int edad, double altura, double peso, String objetivo) {
        next_id++;
        id = next_id;
        this.nombre = nombre;
        this.edad = edad;
        this.altura = altura;
        this.peso = peso;
        this.objetivo = objetivo;
    }

    // Getters y Setters
    // No se usa setId porque se calcula una vez y no se modifica más. Es final.
    public int getId() {
        return id;
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

    // to string

    @Override
    public String toString() {
        return "Cliente{" + "id=" + id + ", nombre=" + nombre + ", edad=" + edad + ", altura=" + altura + ", peso=" + peso + ", objetivo=" + objetivo + '}';
    }
    
}
