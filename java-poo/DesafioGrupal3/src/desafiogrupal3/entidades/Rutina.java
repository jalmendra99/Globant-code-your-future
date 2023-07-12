/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

 */
package desafiogrupal3.entidades;

public class Rutina {

    // Atributos
    
    public static int next_id = -1; // next_id es estático y se comparte entre todos los elementos de la clase
    
    private final int id; // Es constante. Se asigna una vez y no se modifica más.
    private String nombre;
    private int duracion;
    private String nivelDificultad;
    private String descripcion;

    // Constructores
    public Rutina() {                
        next_id++;
        id = next_id;
    }

    public Rutina(String nombre, int duracion, String nivelDificultad, String descripcion) {
        next_id++;
        id = next_id;
        this.nombre = nombre;
        this.duracion = duracion;
        this.nivelDificultad = nivelDificultad;
        this.descripcion = descripcion;
    }

    // Getters y setters
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

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public String getNivelDificultad() {
        return nivelDificultad;
    }

    public void setNivelDificultad(String nivelDificultad) {
        this.nivelDificultad = nivelDificultad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    // To string

    @Override
    public String toString() {
        return "Rutina{" + "id=" + id + ", nombre=" + nombre + ", duracion=" + duracion + ", nivelDificultad=" + nivelDificultad + ", descripcion=" + descripcion + '}';
    }
    
}
