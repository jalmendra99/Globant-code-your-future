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
import jpa1libreria.entidades.Autor;

public class AutorServicio {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
    EntityManager em = emf.createEntityManager();
    private Autor autor = null;

    // Constructores
    public AutorServicio() {
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
        autor = insertarAutor(autor);

        return autor;
    }

    // Insertar
    public Autor insertarAutor(Autor autor) {
        Autor aut = null;
        // (13.b) Asegurarse de no ingresar datos duplicados..
        buscarAutorPorNombre(autor.getNombre());
        if (this.autor == null) {
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
        } else { // Si ya existía un autor con ese mismo nombre en la base de datos..
            System.out.println("\nYa existe un autor con el nombre " + autor.getNombre() + ". No se guardará este registro duplicado.");
            aut = this.autor;
        }
        return aut;
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
    public void buscarAutorPorNombre(String nombre) {

        try {
            Autor a = (Autor) em.createQuery("SELECT a "
                    + "FROM Autor a "
                    + "WHERE a.nombre = :nombre").setParameter("nombre", nombre).getSingleResult();

            System.out.println("Se encontró el autor " + a);

            // Guarda una copia del Autor encontrado
            this.autor = a;

//        return a;
        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró este autor en la base de datos.");
        }

    }

    // Eliminar
    public void eliminarAutor(Autor a) {
        try {
            em.getTransaction().begin();
            em.remove(a);
            em.getTransaction().commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    // Actualizar (merge)
    public void actualizarAutor(Autor a) {
        try {
            em.getTransaction().begin();
            em.merge(a);
            em.getTransaction().commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

}
