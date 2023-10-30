/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria.servicios;

import java.util.Scanner;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import jpa1libreria.entidades.Editorial;
import jpa1libreria.persistencia.DAOEditorial;

public class ServiceEditorial {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
    EntityManager em = emf.createEntityManager();
    private Editorial editorial = null;
    private DAOEditorial daoEditorial;

    // Constructores
    public ServiceEditorial() {
    }

    // Getter y setter Editorial
    public Editorial getEditorial() {
        return editorial;
    }

    public void setEditorial(Editorial editorial) {
        this.editorial = editorial;
    }

    // Métodos
    //
    // Crear
    public Editorial crearEditorialDesdeTeclado() {
        Editorial editorial = new Editorial();
        String nombre;

        System.out.println("\nCreando una Editorial..");

        // (13.a) Validando que el nombre no sea un texto vacío
        do {
            System.out.print("Ingrese el nombre: ");
            nombre = leer.next();
        } while (nombre.length() < 1);
        editorial.setNombre(nombre);

        editorial.setAlta(true);

        // Guarda la editorial creada..
        editorial = insertarEditorial(editorial);

        return editorial;
    }

    // Insertar
    public Editorial insertarEditorial(Editorial editorial) {
        Editorial edi = null;
        // (13.b) Asegurarse de no ingresar datos duplicados..
        this.editorial = daoEditorial.buscarEditorialPorNombre(editorial.getNombre());
        if (this.editorial == null) {
            edi = daoEditorial.insertarEditorial(editorial);
        } else { // Si ya existía un autor con ese mismo nombre en la base de datos..
            System.out.println("\nYa existe una Editorial con el nombre " + editorial.getNombre() + ". No se guardará este registro duplicado.");
            edi = this.editorial;
        }
        return edi; // TODO: PARA QUE ESTO??
    }

    // Ingresar nombre de Editorial para buscar
    public String solicitarPorTecladoNombreEditorialParaBuscar() {
        String nombre;

        System.out.println("\nBuscando una editorial por nombre..");
        System.out.print("Ingrese el nombre a buscar: ");

        // (13.a) Validando que el nombre no sea un texto vacío
        do {
            nombre = leer.next();
        } while (nombre.length() < 1);

        return nombre;
    }

    // Busqueda de un Editorial por nombre.
    public void buscarEditorialPorNombre() {
        String nombre = solicitarPorTecladoNombreEditorialParaBuscar();
        daoEditorial.buscarEditorialPorNombre(nombre);
    }

    // Eliminar
    public void eliminarEditorial() {
        if (this.editorial == null) {
            System.out.println("\nPrimero busque una Editorial para eliminar/borrar.");
        } else {
            daoEditorial.eliminarEditorial(this.editorial);
        }
    }

    // Actualizar (merge)
    public void actualizarEditorial() {
        if (this.editorial == null) {
            System.out.println("\nPrimero busque una Editorial para actualizar/modificar.");
        } else {
            daoEditorial.actualizarEditorial(this.editorial);
        }
    }

}
