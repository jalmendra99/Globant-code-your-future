/**
 * Java - JDBC - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 13
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jdbc1tienda.servicios;

import java.util.ArrayList;
import java.util.Scanner;
import jdbc1tienda.entidades.Producto;
import jdbc1tienda.persistencia.DAOExtProducto;

public class ServiceProducto {

    // Atributos
    private DAOExtProducto dao;
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    // Constructores
    public ServiceProducto() {
    }

    // Métodos
    // a) Lista el nombre de todos los productos que hay en la tabla producto. 
    public void listarProductosNombre() throws Exception {
        ArrayList<Producto> productos = new ArrayList();
        productos = dao.listarProductosNombre();

        for (Producto producto : productos) {
            System.out.println(producto);
        }
    }

    // b) Lista los nombres y los precios de todos los productos de la tabla producto. 
    public void listarProductosNombreYPrecio() throws Exception {
        ArrayList<Producto> productos = new ArrayList();
        productos = dao.listarProductosNombreYPrecio();

        for (Producto producto : productos) {
            System.out.println(producto);
        }
    }

    // c) Listar aquellos productos que su precio esté entre 120 y 202. 
    public void listarProductosEntrePrecios(int precioMin, int precioMax) throws Exception {
        ArrayList<Producto> productos = new ArrayList();
        productos = dao.listarProductosEntrePrecios(precioMin, precioMax);

        for (Producto producto : productos) {
            System.out.println(producto);
        }

    }

    // d) Buscar y listar todos los Portátiles de la tabla producto. 
    public void listarProductosBuscarNombre(String nombre) throws Exception {
        ArrayList<Producto> productos = new ArrayList();
        productos = dao.listarProductosBuscarNombre(nombre);

        for (Producto producto : productos) {
            System.out.println(producto);
        }

    }

    // e) Listar el nombre y el precio del producto más barato.
    public void listarProductosNombrePrecioDelMasBarato() throws Exception {
        ArrayList<Producto> productos = new ArrayList();
        productos = dao.listarProductosNombrePrecioDelMasBarato();

        for (Producto producto : productos) {
            System.out.println(producto);
        }

    }

    // f) Ingresar un producto a la base de datos. 
    public void ingresarProducto() throws Exception {

        Producto p = new Producto();

        System.out.println("\nIngresando un producto..");
        p.setCodigo(dao.proximoCodigoProducto());

        System.out.print("Ingrese el nombre: ");
        p.setNombre(leer.next());

        System.out.print("Ingrese el precio: ");
        p.setPrecio(leer.nextDouble());

        System.out.print("Ingrese el código del fabricante: ");
        p.setCodigo(leer.nextInt());

        dao.guardarProducto(p);
        System.out.println("Producto guardado: " + p);
    }

    // h) Editar un producto con datos a elección.
    public void modificarProductoPorCodigo() throws Exception {

        Producto p = new Producto();

        System.out.println("\nModificando un producto..");

        System.out.print("Ingrese el código del producto a modificar: ");
        p = dao.buscarProductoPorCodigo(leer.nextInt());

        System.out.println("\nEl nombre del producto es: " + p.getNombre());
        System.out.print("Ingrese un nuevo nombre o <enter> para dejar el mismo: ");
        String nombre = leer.next();
        if (!nombre.equals("")) {
            p.setNombre(leer.next());
        }

        System.out.printf("El precio del producto es: %.2f", p.getPrecio());
        System.out.print("Ingrese el nuevo precio o <enter> para dejar el mismo: ");
        String precio = leer.next();
        if (!precio.equals("")) {
            double precioD = Double.valueOf(precio);
            p.setPrecio(precioD);
        }

        System.out.println("El código del fabricante del producto es :" + p.getCodigoFabricante());
        System.out.print("Ingrese el nuevo código del fabricante o <enter> para dejar el mismo: ");
        String codigo = leer.next();
        if (!codigo.equals("")) {
            int codigoI = Integer.valueOf(codigo);
            p.setCodigoFabricante(codigoI);
        }        
        
        dao.modificarProductoPorCodigo(p);
        System.out.println("Producto modificado: " + p);
    }

}
