/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria.servicios;

import java.util.ArrayList;
import java.util.Scanner;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import jpa1libreria.entidades.Libro;

public class LibroServicio {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
    EntityManager em = emf.createEntityManager();

    // Constructores
    public LibroServicio() {
    }

    // Métodos
    //
    // Crear
    public Libro crearLibroDesdeTeclado() {
        Libro l = new Libro();
        
        System.out.println("\nCreando un Libro..");
        System.out.print("Ingrese el título: ");
        l.setTitulo(leer.next());
        System.out.print("Ingrese el año: ");
        l.setAnio(leer.nextInt());
        System.out.print("Ingrese la cantidad de ejemplares: ");
        l.setEjemplares(leer.nextInt());        
        l.setEjemplaresPrestados(0);
        l.setEjemplaresRestantes(l.getEjemplares());
        l.setAlta(true);

        return l;
    }

    // Insertar
    public void insertarLibro(Libro l) {

        try {
            em.getTransaction().begin();
            em.persist(l);
            em.getTransaction().commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }

    }
    // 9) Busqueda de un Libro por isbn.
    public Libro buscarLibroPorIsbn() {
        System.out.println("\nBuscando un Libro por ISBN..");
        System.out.print("Ingrese el ISBN a buscar: ");
        Long isbn = leer.nextLong();

        Libro l = (Libro) em.createQuery("SELECT l "
                + "FROM libro l "
                + "WHERE l.isbn = :isbn").setParameter("isbn", isbn).getSingleResult();

        return l;
    }
    
    // 10) Busqueda de un Libro por título.
    public Libro buscarLibroPorTitulo() {
        System.out.println("\nBuscando un Libro por título..");
        System.out.print("Ingrese el título a buscar: ");
        String titulo = leer.next();

        Libro l = (Libro) em.createQuery("SELECT l "
                + "FROM libro l "
                + "WHERE l.titulo = :titulo").setParameter("titulo", titulo).getSingleResult();

        return l;
    }
    
    // 11) Busqueda de un/unos Libro(s) por nombre de Autor.
    public ArrayList<Libro> buscarLibrosPorNombreAutor() {
        System.out.println("\nBuscando un(os) Libro(s) por nombre de Autor..");
        System.out.print("Ingrese el nombre del Autor para buscar buscar el/los libro(s): ");
        String autor = leer.next();

        ArrayList<Libro> libros = (ArrayList<Libro>) em.createQuery("SELECT l "
                + "FROM libro l "
                + "WHERE l.autor.nombre LIKE = :autor").setParameter("autor", autor).getResultList();

        return libros;
    }
    
    // 12) Busqueda de un/unos Libro(s) por nombre de Editorial.
    public ArrayList<Libro> buscarLibrosPorNombreEditorial() {
        System.out.println("\nBuscando un(os) Libro(s) por nombre de Editorial..");
        System.out.print("Ingrese el nombre la Editorial para buscar buscar el/los libro(s): ");
        String editorial = leer.next();

        ArrayList<Libro> libros = (ArrayList<Libro>) em.createQuery("SELECT l "
                + "FROM libro l "
                + "WHERE l.editorial.nombre LIKE = :editorial").setParameter("editorial", editorial).getResultList();

        return libros;
    }

    // Eliminar
    public void eliminarLibro(Libro l) {
        em.getTransaction().begin();
        em.remove(l);
        em.getTransaction().commit();
    }

    // Actualizar (merge)
    public void actualizarLibro(Libro l) {
        em.getTransaction().begin();
        em.merge(l);
        em.getTransaction().commit();
    }
    
}
