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
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import jpa1libreria.entidades.Editorial;

public class EditorialServicio {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
    EntityManager em = emf.createEntityManager();
    private Editorial editorial = null;

    // Constructores
    public EditorialServicio() {
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
    public Editorial insertarEditorial(Editorial e) {
        Editorial edit = null;
        // (13.b) Asegurarse de no ingresar datos duplicados..
        buscarEditorialPorNombre(e.getNombre());

        if (this.getEditorial() == null) {
            // Guardando autor
            try {
                em.getTransaction().begin();
                em.persist(e);
                em.getTransaction().commit();
                System.out.println("\nSe guardó la editorial con el nombre " + e.getNombre() + ".");
                edit = e;
            } catch (Exception ex) {
                System.out.println(ex);
            }
        } else { // Si ya existía una editorial con ese mismo nombre en la base de datos..
            System.out.println("\nYa existe una editorial con el nombre " + e.getNombre() + ". No se guardará este registro duplicado.");
            edit = this.editorial;
        }
        return edit;
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
    public void buscarEditorialPorNombre(String nombre) {

        try {
            Editorial e = (Editorial) em.createQuery("SELECT e "
                    + "FROM Editorial e "
                    + "WHERE e.nombre = :nombre").setParameter("nombre", nombre).getSingleResult();

            System.out.println("Se encontró la editorial " + e);

            // Guarda una copia de la Editorial encontrada
            this.editorial = e;

//        return e;
        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró esa editorial en la base de datos.");
        }
    }

    // Eliminar
    public void eliminarEditorial(Editorial e) {
        try {
            em.getTransaction().begin();
            em.remove(e);
            em.getTransaction().commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    // Actualizar (merge)
    public void actualizarEditorial(Editorial e) {
        try {
            em.getTransaction().begin();
            em.merge(e);
            em.getTransaction().commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }

    }
}
