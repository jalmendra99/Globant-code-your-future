/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria.persistencia;

import javax.persistence.NoResultException;
import jpa1libreria.entidades.Autor;

public final class DAOAutor extends DAO {

    // Insertar
    public Autor insertarAutor(Autor autor) {
        conectarBase();
        Autor aut = null;
        // Guardando autor
        try {
            em.getTransaction().begin();
            em.persist(autor);
            em.getTransaction().commit();
            System.out.println("\nSe guardó el autor con el nombre " + autor.getNombre() + ".");
            aut = autor;
        } catch (Exception e) {
            System.out.println(e);
        }
        desconectarBase();
        return aut;
    }

    // 8) Busqueda de un Autor por nombre.
    public Autor buscarAutorPorNombre(String nombre) {
        conectarBase();
        Autor a = null;
        try {
            a = (Autor) em.createQuery("SELECT a "
                    + "FROM Autor a "
                    + "WHERE a.nombre = :nombre").setParameter("nombre", nombre).getSingleResult();

            System.out.println("Se encontró el autor " + a);

        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró este autor en la base de datos.");
        }
        desconectarBase();
        return a;
    }

    // Eliminar
    public void eliminarAutor(Autor a) {
        conectarBase();
        try {
            em.getTransaction().begin();
            em.remove(a);
            em.getTransaction().commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        desconectarBase();
    }

    // Actualizar (merge)
    public void actualizarAutor(Autor a) {
        conectarBase();
        try {
            em.getTransaction().begin();
            em.merge(a);
            em.getTransaction().commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        desconectarBase();
    }
}
