/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria.servicios;

import java.util.Scanner;
import jpa1libreria.entidades.Autor;
import jpa1libreria.persistencia.DAOAutor;

public class ServiceAutor {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    private Autor autor = null;
    private DAOAutor daoAutor;

    // Constructores
    public ServiceAutor() {
    }

    // Getter y setter Autor
    public Autor getAutor() {
        return autor;
    }

    public void setAutor(Autor autor) {
        this.autor = autor;
    }

    // Métodos
    //
    // Crear
    public Autor crearAutorDesdeTeclado() {
        Autor autor = new Autor();
        String nombre;

        System.out.println("\nCreando un Autor..");

        // (13.a) Validando que el nombre no sea un texto vacío
        do {
            System.out.print("Ingrese el nombre: ");
            nombre = leer.next();
        } while (nombre.length() < 1);
        autor.setNombre(nombre);

        autor.setAlta(true);

        // Guarda el autor creado
        insertarAutor(autor);

        return autor;
    }

    // Insertar
    public Autor insertarAutor(Autor autor) {
        Autor aut = null;
        // (13.b) Asegurarse de no ingresar datos duplicados..
        this.autor = daoAutor.buscarAutorPorNombre(autor.getNombre());
        if (this.autor == null) {
            aut = daoAutor.insertarAutor(autor);
        } else { // Si ya existía un autor con ese mismo nombre en la base de datos..
            System.out.println("\nYa existe un autor con el nombre " + autor.getNombre() + ". No se guardará este registro duplicado.");
            aut = this.autor;
        }
        return aut; // TODO: PARA QUE ESTO??
    }

    // Ingresar nombre de Autor para buscar
    public String solicitarPorTecladoNombreAutorParaBuscar() {
        String nombre;

        System.out.println("\nBuscando un Autor por nombre..");
        System.out.print("Ingrese el nombre a buscar: ");

        // (13.a) Validando que el nombre no sea un texto vacío
        do {
            nombre = leer.next();
        } while (nombre.length() < 1);

        return nombre;
    }

    // 8) Busqueda de un Autor por nombre.
    public void buscarAutorPorNombre() {
        String nombre = solicitarPorTecladoNombreAutorParaBuscar();
        daoAutor.buscarAutorPorNombre(nombre);
    }

    // Eliminar
    public void eliminarAutor() {
        if (this.autor == null) {
            System.out.println("\nPrimero busque un Autor para eliminar/borrar.");
        } else {
            daoAutor.eliminarAutor(this.autor);
        }
    }

    // Actualizar (merge)
    public void actualizarAutor() {
        if (this.autor == null) {
            System.out.println("\nPrimero busque un Autor para actualizar/modificar.");
        } else {
            daoAutor.actualizarAutor(this.autor);
        }
    }

}
