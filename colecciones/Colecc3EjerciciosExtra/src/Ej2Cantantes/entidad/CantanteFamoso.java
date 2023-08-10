/*
Java - colecciones - Ejercicios de Aprendizaje extra.
Ejercicio 2 - Página 25

Crear una clase llamada CantanteFamoso. Esta clase guardará cantantes famosos 
y tendrá como atributos el nombre y discoConMasVentas. Se debe, además, en el main, 
crear una lista de tipo CantanteFamoso y agregar 5 objetos de tipo CantanteFamoso a la lista. 
Luego, se debe mostrar los nombres de cada cantante y su disco con más ventas por pantalla. 
Una vez agregado los 5, en otro bucle, crear un menú que le de la opción al usuario 
de agregar un cantante más, mostrar todos los cantantes, eliminar un cantante 
que el usuario elija o de salir del programa. 
Al final se deberá mostrar la lista con todos los cambios

Fer V - Jalmendra99@gmail.com

 */
package Ej2Cantantes.entidad;

public class CantanteFamoso {

    // Atributos
    private String nombre;
    private String discoConMasVentas;

    // Constructores
    public CantanteFamoso() {
    }

    public CantanteFamoso(String nombre, String discoConMasVentas) {
        this.nombre = nombre;
        this.discoConMasVentas = discoConMasVentas;
    }

    // Getters y setters
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDiscoConMasVentas() {
        return discoConMasVentas;
    }

    public void setDiscoConMasVentas(String discoConMasVentas) {
        this.discoConMasVentas = discoConMasVentas;
    }

    // toString
    @Override
    public String toString() {
        return "CantanteFamoso{" + "nombre=" + nombre + ", discoConMasVentas=" + discoConMasVentas + '}';
    }

}
