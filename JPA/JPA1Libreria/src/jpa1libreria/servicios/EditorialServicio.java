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

public class EditorialServicio {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
    EntityManager em = emf.createEntityManager();

    // Constructores
    public EditorialServicio() {
    }

    // Métodos
    //
    // Crear
    public Editorial crearEditorialDesdeTeclado() {
        Editorial e = new Editorial();
        System.out.println("\nCreando una Editorial..");

        System.out.print("Ingrese el nombre: ");
        e.setNombre(leer.next());

        e.setAlta(true);

        return e;
    }

    // Insertar
    public void insertarEditorial(Editorial e) {

        try {
            em.getTransaction().begin();
            em.persist(e);
            em.getTransaction().commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }

    }

    // Busqueda de un Editorial por nombre.
    public Editorial buscarEditorialPorNombre() {
        System.out.println("\nBuscando una editorial por nombre..");
        System.out.print("Ingrese el nombre a buscar: ");
        String nombre = leer.next();

        Editorial e = (Editorial) em.createQuery("SELECT a "
                + "FROM editorial e "
                + "WHERE e.nombre = :nombre").setParameter("nombre", nombre).getSingleResult();

        return e;
    }

    // Eliminar
    public void eliminarEditorial(Editorial e) {
        em.getTransaction().begin();
        em.remove(e);
        em.getTransaction().commit();
    }

    // Actualizar (merge)
    public void actualizarEditorial(Editorial e) {
        em.getTransaction().begin();
        em.merge(e);
        em.getTransaction().commit();
    }

}
