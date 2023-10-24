/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria.servicios;

import java.util.List;
import java.util.Scanner;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import jpa1libreria.entidades.Libro;

public class LibroServicio {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
    EntityManager em = emf.createEntityManager();
    private List<Libro> libros = null;

    // Constructores
    public LibroServicio() {
    }

    // Getter y setter
    public List<Libro> getLibros() {
        return libros;
    }

    public void setLibros(List<Libro> libros) {
        this.libros = libros;
    }

    public void limpiarArrayLibros() {
        this.libros.clear();
    }

    // Métodos
    //
    // Crear
    public Libro crearLibroDesdeTeclado() {
        Libro libro = new Libro();
        AutorServicio as = new AutorServicio();
        EditorialServicio es = new EditorialServicio();

        String titulo;
        Integer anio;
        Integer cantidad;

        System.out.println("\nCreando un Libro..");

        // (13.a) Validando que el título no sea un texto vacío
        do {
            System.out.print("Ingrese el título: ");
            titulo = leer.next();
        } while (titulo.length() < 1);
        libro.setTitulo(titulo);

        // (13.a) Validando que el año esté entre 0 y 3000
        do {
            System.out.print("Ingrese el año: ");
            anio = leer.nextInt();
        } while (anio < 0 || anio > 3000);
        libro.setAnio(anio);

        // (13.a) Validando que cantidad de ejemplares sea mayor que 0 y menor que el máximo Integer posible
        do {
            System.out.print("Ingrese la cantidad de ejemplares: ");
            cantidad = leer.nextInt();
        } while (cantidad < 0 || cantidad > Integer.MAX_VALUE);
        libro.setEjemplares(cantidad);

        libro.setEjemplaresPrestados(0);
        libro.setEjemplaresRestantes(libro.getEjemplares());
        libro.setAlta(true);

        libro.setAutor(as.crearAutorDesdeTeclado());

        libro.setEditorial(es.crearEditorialDesdeTeclado());

        // Se guarda el libro creado
        insertarLibro(libro);

        return libro;
    }

    // Insertar
    public void insertarLibro(Libro libro) {

        // (13.b) Asegurarse de no ingresar datos duplicados..

        // No se puede buscar solo por libro.getIsbn() porque ese isbn va a ser siempre distinto
        // al de un posible libro igual pero ya guardado en la base.
        // Entonces hay que ignorar el nuevo isbn y buscar por las demás condiciones...
        // *ESE* sería un libro encontrado en la base de datos, que es "igual" al libro que se está intentando insertar.       
        buscarLibroPorTODO(libro);
        
        if (this.libros == null) {
            // Guardando libro
            try {
                em.getTransaction().begin();
                em.persist(libro);
                em.getTransaction().commit();
                System.out.println("\nSe guardó correctamente un libro con estas características");
                System.out.println(libro);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        } else { // Si ya existía un libro con las mismas características en la base de datos..
            System.out.println("\nYa existe un libro con las mismas características (excepto el isbn generado automáticamente)..");
            System.out.println(libro);
            System.out.println("No se guardará este registro duplicado.");
        }

    }

    // Ingresar isbn para buscar
    public Long solicitarPorTecladoIsbnLibroParaBuscar() {

        Long isbn;

        System.out.println("\nBuscando un libro por ISBN..");
        System.out.print("Ingrese el ISBN a buscar: ");

        // (13.a) Validando que el isbn no sea menor a cero ni mayor a el máximo long
        do {
            isbn = Long.parseLong(leer.next());
        } while (isbn < 0 || isbn > Long.MAX_VALUE);

        return isbn;

    }

    // Ingresar título para buscar
    public String solicitarPorTecladoTituloLibroParaBuscar() {

        String titulo;

        System.out.println("\nBuscando un libro por Título..");
        System.out.print("Ingrese el título a buscar: ");

        // (13.a) Validando que el título no esté vacío
        do {
            titulo = leer.next();
        } while (titulo.length() < 1);

        return titulo;

    }

    // Ingresar nombre de autor para buscar
    public String solicitarPorTecladoNombreAutorLibroParaBuscar() {

        String nombre;

        System.out.println("\nBuscando libro(s) por el nombre del autor..");
        System.out.print("Ingrese el nombre a buscar: ");

        // (13.a) Validando que el nombre no esté vacío
        do {
            nombre = leer.next();
        } while (nombre.length() < 1);

        return nombre;

    }

    // Ingresar nombre de autor para buscar
    public String solicitarPorTecladoNombreEditorialLibroParaBuscar() {

        String nombre;

        System.out.println("\nBuscando libro(s) por el nombre de la editorial..");
        System.out.print("Ingrese el nombre a buscar: ");

        // (13.a) Validando que el nombre no esté vacío
        do {
            nombre = leer.next();
        } while (nombre.length() < 1);

        return nombre;

    }

    // 9) Busqueda de un Libro por isbn.
    public void buscarLibroPorIsbn(Long isbn) {

        try {
            Libro l = (Libro) em.createQuery("SELECT l "
                    + "FROM Libro l "
                    + "WHERE l.isbn = :isbn").setParameter("isbn", isbn).getSingleResult();

            // Guarda una copia del libro encontrado
            this.limpiarArrayLibros();
            this.libros.add(l);

//        return l;
        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró este libro en la base de datos.");
        }
    }

    // 10) Busqueda de un Libro por título.
    public void buscarLibroPorTitulo(String titulo) {
        try {
            Libro l = (Libro) em.createQuery("SELECT l "
                    + "FROM Libro l "
                    + "WHERE l.titulo = :titulo").setParameter("titulo", titulo).getSingleResult();

            // Guarda una copia del libro encontrado
            this.limpiarArrayLibros();
            this.libros.add(l);

//        return l;
        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró el libro.");
        }
    }

    // 11) Busqueda de un/unos Libro(s) por nombre de Autor.
    public void buscarLibrosPorNombreAutor(String autor) {
        try {
//            ArrayList<Libro> libros = (ArrayList<Libro>) em.createQuery("SELECT l "
//                    + "FROM Libro l "
//                    + "WHERE l.autor.nombre LIKE = :autor").setParameter("autor", autor).getResultList();
            List<Libro> libros = em.createQuery(
                    "SELECT l FROM Libro l WHERE l.autor.nombre LIKE :autor"
            ).setParameter("autor", autor).getResultList();

            // Guarda una copia del libro encontrado
            this.libros = libros;

//        return libros;
            if (this.libros.size() == 0) {
                System.out.println("\nNo se encontró el libro");
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    // 12) Busqueda de un/unos Libro(s) por nombre de Editorial.
    public void buscarLibrosPorNombreEditorial(String editorial) {
        try {
            List<Libro> libros = em.createQuery(
                    "SELECT l FROM Libro l WHERE l.editorial.nombre LIKE :editorial"
            ).setParameter("editorial", editorial).getResultList();

            // Guarda una copia del libro encontrado
            this.libros = libros;

//        return libros;
            if (this.libros.size() == 0) {
                System.out.println("\nNo se encontró el libro");
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    // Busqueda de un Libro por TODO (para verificar antes de insertar libros repetidos)
    public void buscarLibroPorTODO(Libro libro) {
        try {
            Libro l = (Libro) em.createQuery("SELECT l "
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

            // Guarda una copia del libro encontrado
            this.limpiarArrayLibros();
            this.libros.add(l);

//        return l;
        } catch (NoResultException nre) {
            System.out.println("\nNo se encontró el libro.");
        }
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
