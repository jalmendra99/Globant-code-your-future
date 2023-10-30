/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria.persistencia;

import java.util.List;
import javax.persistence.NoResultException;
import jpa1libreria.entidades.Libro;

public class DAOLibro extends DAO {

    // Insertar
    public Libro insertarLibro(Libro libro) {

        Libro lib = null;

        try {
            em.getTransaction().begin();
            em.persist(libro);
            em.getTransaction().commit();
            System.out.println("\nSe guardó correctamente un libro con estas características");
            System.out.println(libro);
            lib = libro;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return lib;

    }

    // 9) Busqueda de un Libro por isbn.
    public Libro buscarLibroPorIsbn(Long isbn) {
        Libro l = null;
        try {
            l = (Libro) em.createQuery("SELECT l "
                    + "FROM Libro l "
                    + "WHERE l.isbn = :isbn").setParameter("isbn", isbn).getSingleResult();

        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró este libro en la base de datos.");
        }
        return l;
    }

    // 10) Busqueda de un Libro por título.
    public Libro buscarLibroPorTitulo(String titulo) {
        Libro l = null;
        try {
            l = (Libro) em.createQuery("SELECT l "
                    + "FROM Libro l "
                    + "WHERE l.titulo = :titulo").setParameter("titulo", titulo).getSingleResult();

        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró el libro.");
        }
        return l;
    }

    // 11) Busqueda de un/unos Libro(s) por nombre de Autor.
    public List<Libro> buscarLibrosPorNombreAutor(String autor) {
        List<Libro> libros = null;
        try {
            libros = em.createQuery(
                    "SELECT l FROM Libro l WHERE l.autor.nombre LIKE :autor"
            ).setParameter("autor", autor).getResultList();

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return libros;
    }

    // 12) Busqueda de un/unos Libro(s) por nombre de Editorial.
    public List<Libro> buscarLibrosPorNombreEditorial(String editorial) {
        List<Libro> libros = null;
        try {
            libros = em.createQuery(
                    "SELECT l FROM Libro l WHERE l.editorial.nombre LIKE :editorial"
            ).setParameter("editorial", editorial).getResultList();

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return libros;
    }

    // Busqueda de un Libro por TODO (para verificar antes de insertar libros repetidos)
    public Libro buscarLibroPorTODO(Libro libro) {
        Libro l = null;

        try {
            l = (Libro) em.createQuery("SELECT l "
                    + "FROM Libro l "
                    + "WHERE l.titulo = :titulo "
                    + "AND l.anio = :anio "
                    + "AND l.autor.nombre = :autor "
                    + "AND l.editorial.nombre = :editorial ")
                    .setParameter("titulo", libro.getTitulo())
                    .setParameter("anio", libro.getAnio())
                    .setParameter("autor", libro.getAutor().getNombre())
                    .setParameter("editorial", libro.getEditorial().getNombre())
                    .getSingleResult();

        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró el libro.");
        }
        return l;
    }

    // Eliminar
    public void eliminarLibro(Libro l) {
        try {
            em.getTransaction().begin();
            em.remove(l);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    // Actualizar (merge)
    public void actualizarLibro(Libro l) {
        try {
            em.getTransaction().begin();
            em.merge(l);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

}
