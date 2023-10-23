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
import jpa1libreria.entidades.Autor;

public class AutorServicio {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
    EntityManager em = emf.createEntityManager();

    // Constructores
    public AutorServicio() {
    }

    // Métodos
    //
    // Crear
    public Autor crearAutorDesdeTeclado() {
        Autor a = new Autor();
        System.out.println("\nCreando un Autor..");

//        System.out.print("Ingrese el ID: ");
//        a.setId(leer.nextInt());

        System.out.print("Ingrese el nombre: ");
        a.setNombre(leer.next());

//        System.out.print("¿Dar de alta? (s/n): ");
//        if (leer.next().toUpperCase().charAt(0) == 'S') {
//            a.setAlta(true);
//        } else {
//            a.setAlta(false);
//        }
        a.setAlta(true);

        return a;
    }

    // Insertar
    public void insertarAutor(Autor a) {

        try {
            em.getTransaction().begin();
            em.persist(a);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    // 8) Busqueda de un Autor por nombre.
    public Autor buscarAutorPorNombre() {
        System.out.println("\nBuscando un Autor por nombre..");
        System.out.print("Ingrese el nombre a buscar: ");
        String nombre = leer.next();

        Autor a = (Autor) em.createQuery("SELECT a "
                + "FROM autor a "
                + "WHERE a.nombre = :nombre").setParameter("nombre", nombre).getSingleResult();

        return a;
    }

    // Eliminar
    public void eliminarAutor(Autor a) {
        em.getTransaction().begin();
        em.remove(a);
        em.getTransaction().commit();
    }

    // Actualizar (merge)
    public void actualizarAutor(Autor a) {
        em.getTransaction().begin();
        em.merge(a);
        em.getTransaction().commit();
    }

    // 
//    
//    
//    
//    
//    // a) Lista el nombre de todos los productos que hay en la tabla producto. 
//    public void listarAutoresNombre() throws Exception {
//        ArrayList<Autor> productos = new ArrayList();
//        productos = dao.listarAutorsNombre();
//
//        for (Autor producto : productos) {
//            System.out.println(producto);
//        }
//    }
//
//    // b) Lista los nombres y los precios de todos los productos de la tabla producto. 
//    public void listarAutoresNombreYPrecio() throws Exception {
//        ArrayList<Autor> productos = new ArrayList();
//        productos = dao.listarAutorsNombreYPrecio();
//
//        for (Autor producto : productos) {
//            System.out.println(producto);
//        }
//    }
//
//    // c) Listar aquellos productos que su precio esté entre 120 y 202. 
//    public void listarAutoresEntrePrecios(int precioMin, int precioMax) throws Exception {
//        ArrayList<Autor> productos = new ArrayList();
//        productos = dao.listarAutorsEntrePrecios(precioMin, precioMax);
//
//        for (Autor producto : productos) {
//            System.out.println(producto);
//        }
//
//    }
//
//    // d) Buscar y listar todos los Portátiles de la tabla producto. 
//    public void listarAutoresBuscarNombre(String nombre) throws Exception {
//        ArrayList<Autor> productos = new ArrayList();
//        productos = dao.listarAutorsBuscarNombre(nombre);
//
//        for (Autor producto : productos) {
//            System.out.println(producto);
//        }
//
//    }
//
//    // e) Listar el nombre y el precio del producto más barato.
//    public void listarAutoresNombrePrecioDelMasBarato() throws Exception {
//        ArrayList<Autor> productos = new ArrayList();
//        productos = dao.listarAutorsNombrePrecioDelMasBarato();
//
//        for (Autor producto : productos) {
//            System.out.println(producto);
//        }
//
//    }
//
//    // f) Ingresar un producto a la base de datos. 
//    public void ingresarAutor() throws Exception {
//
//        Autor p = new Autor();
//
//        System.out.println("\nIngresando un producto..");
//        p.setCodigo(dao.proximoCodigoAutor());
//
//        System.out.print("Ingrese el nombre: ");
//        p.setNombre(leer.next());
//
//        System.out.print("Ingrese el precio: ");
//        p.setPrecio(leer.nextDouble());
//
//        System.out.print("Ingrese el código del fabricante: ");
//        p.setCodigo(leer.nextInt());
//
//        dao.guardarAutor(p);
//        System.out.println("Autor guardado: " + p);
//    }
//
//    // h) Editar un producto con datos a elección.
//    public void modificarAutorPorCodigo() throws Exception {
//
//        Autor p = new Autor();
//
//        System.out.println("\nModificando un producto..");
//
//        System.out.print("Ingrese el código del producto a modificar: ");
//        p = dao.buscarAutorPorCodigo(leer.nextInt());
//
//        System.out.println("\nEl nombre del producto es: " + p.getNombre());
//        System.out.print("Ingrese un nuevo nombre o <enter> para dejar el mismo: ");
//        String nombre = leer.next();
//        if (!nombre.equals("")) {
//            p.setNombre(leer.next());
//        }
//
//        System.out.printf("El precio del producto es: %.2f", p.getPrecio());
//        System.out.print("Ingrese el nuevo precio o <enter> para dejar el mismo: ");
//        String precio = leer.next();
//        if (!precio.equals("")) {
//            double precioD = Double.valueOf(precio);
//            p.setPrecio(precioD);
//        }
//
//        System.out.println("El código del fabricante del producto es :" + p.getCodigoFabricante());
//        System.out.print("Ingrese el nuevo código del fabricante o <enter> para dejar el mismo: ");
//        String codigo = leer.next();
//        if (!codigo.equals("")) {
//            int codigoI = Integer.valueOf(codigo);
//            p.setCodigoFabricante(codigoI);
//        }
//
//        dao.modificarAutorPorCodigo(p);
//        System.out.println("Autor modificado: " + p);
//    }
}
