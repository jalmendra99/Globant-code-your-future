/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria.persistencia;

import javax.persistence.NoResultException;
import jpa1libreria.entidades.Editorial;

public class DAOEditorial extends DAO {

    // Insertar
    public Editorial insertarEditorial(Editorial e) {
        Editorial edit = null;

        // Guardando editorial
        try {
            em.getTransaction().begin();
            em.persist(e);
            em.getTransaction().commit();
            System.out.println("\nSe guardó la editorial con el nombre " + e.getNombre() + ".");
            edit = e;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return edit;
    }

    // Busqueda de un Editorial por nombre.
    public Editorial buscarEditorialPorNombre(String nombre) {

        Editorial e = null;
        try {
            e = (Editorial) em.createQuery("SELECT e "
                    + "FROM Editorial e "
                    + "WHERE e.nombre = :nombre").setParameter("nombre", nombre).getSingleResult();

            System.out.println("Se encontró la editorial " + e);

        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró esa editorial en la base de datos.");
        }

        return e;
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
