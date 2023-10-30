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
import javax.persistence.Persistence;
import jpa1libreria.entidades.Libro;
import jpa1libreria.persistencia.DAOLibro;

public class ServiceLibro {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
    EntityManager em = emf.createEntityManager();
    private List<Libro> libros = null;
    private DAOLibro daoLibro;

    // Constructores
    public ServiceLibro() {
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
        ServiceAutor as = new ServiceAutor();
        ServiceEditorial es = new ServiceEditorial();

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
    public Libro insertarLibro(Libro libro) {
        Libro lib = null;
        // (13.b) Asegurarse de no ingresar datos duplicados..
        // No se puede buscar solo por libro.getIsbn() porque ese isbn va a ser null o distinto
        // al de un posible libro igual pero ya guardado en la base.
        // Entonces ignoré el nuevo isbn y busco por las demás condiciones...
        // *ESE* sería un libro encontrado en la base de datos, que es "igual" al objeto libro que se está intentando insertar.       
        this.limpiarArrayLibros();
        lib = daoLibro.buscarLibroPorTODO(libro);
        this.libros.add(lib);

        if (this.libros == null) {
            lib = daoLibro.insertarLibro(libro);
        } else { // Si ya existía un libro con las mismas características en la base de datos..
            System.out.println("\nYa existe un libro con las mismas características (excepto el isbn generado automáticamente)..");
            System.out.println(libro);
            System.out.println("No se guardará este registro duplicado.");
            lib = this.libros.get(0);
        }
        return lib; // TODO: PARA QUE ESTO??
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
        Libro lib = null;

        this.limpiarArrayLibros();
        lib = daoLibro.buscarLibroPorIsbn(isbn);
        this.libros.add(lib);

        if (this.libros == null) {
            System.out.println("\nNo se encontró un libro con el isbn ingresado.");
        }
    }

    // 10) Busqueda de un Libro por título.
    public void buscarLibroPorTitulo(String titulo) {
        Libro lib = null;

        this.limpiarArrayLibros();
        lib = daoLibro.buscarLibroPorTitulo(titulo);
        this.libros.add(lib);

        if (this.libros == null) {
            System.out.println("\nNo se encontró un libro con el título ingresado.");
        }

    }

    // 11) Busqueda de un/unos Libro(s) por nombre de Autor.
    public void buscarLibrosPorNombreAutor(String autor) {
        List<Libro> libros = null;

        this.limpiarArrayLibros();
        libros = daoLibro.buscarLibrosPorNombreAutor(autor);

        if (this.libros == null) {
            System.out.println("\nNo se encontraron libros con el autor ingresado.");
        }

    }

    // 12) Busqueda de un/unos Libro(s) por nombre de Editorial.
    public void buscarLibrosPorNombreEditorial(String editorial) {
        List<Libro> libros = null;

        this.limpiarArrayLibros();
        libros = daoLibro.buscarLibrosPorNombreEditorial(editorial);

        if (this.libros == null) {
            System.out.println("\nNo se encontraron libros con la editorial ingresada.");
        }

    }

    // Eliminar
    public void eliminarLibro() {
        if (this.libros == null) {
            System.out.println("\nPrimero busque un Libro para eliminar/borrar.");
        } else {
            daoLibro.eliminarLibro(this.libros.get(0));
        }
    }

    // Actualizar (merge)
    public void actualizarLibro() {
        if (this.libros == null) {
            System.out.println("\nPrimero busque un Libro para actualizar/modificar.");
        } else {
            daoLibro.eliminarLibro(this.libros.get(0));
        }
    }

}
