/**
 * Java - JDBC - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 13
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jdbc1tienda;

import java.util.Scanner;
import jdbc1tienda.servicios.ServiceFabricante;
import jdbc1tienda.servicios.ServiceProducto;

public class JDBC1Tienda {

    public static void main(String[] args) throws Exception {

        ServiceProducto sp = new ServiceProducto();
        ServiceFabricante sf = new ServiceFabricante();

        menu(sp, sf);

    }

    private static void menu(ServiceProducto sp, ServiceFabricante sf) throws Exception {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        char op;

        do {

            System.out.println("** Menú principal **");
            System.out.println("a) Lista el nombre de todos los productos que hay en la tabla producto.");
            System.out.println("b) Lista los nombres y los precios de todos los productos de la tabla producto.");
            System.out.println("c) Listar aquellos productos que su precio esté entre 120 y 202.");
            System.out.println("d) Buscar y listar todos los Portátiles de la tabla producto.");
            System.out.println("e) Listar el nombre y el precio del producto más barato.");
            System.out.println("f) Ingresar un producto a la base de datos.");
            System.out.println("g) Ingresar un fabricante a la base de datos.");
            System.out.println("h) Editar un producto con datos a elección.");
            System.out.println("i) Salir");
            System.out.println("");
            System.out.print("Elija una opción (a..i): ");
            op = leer.next().toUpperCase().charAt(0);

            switch (op) {
                case 'A': // a) Lista el nombre de todos los productos que hay en la tabla producto. 
                    sp.listarProductosNombre();
                    break;
                case 'B': // b) Lista los nombres y los precios de todos los productos de la tabla producto. 
                    sp.listarProductosNombreYPrecio();
                    break;
                case 'C': // c) Listar aquellos productos que su precio esté entre 120 y 202. 
                    sp.listarProductosEntrePrecios(120, 202);
                    break;
                case 'D': // d) Buscar y listar todos los Portátiles de la tabla producto. 
                    sp.listarProductosBuscarNombre("portatil");
                    break;
                case 'E': // e) Listar el nombre y el precio del producto más barato.
                    sp.listarProductosNombrePrecioDelMasBarato();
                    break;
                case 'F': // f) Ingresar un producto a la base de datos. 
                    sp.ingresarProducto();
                    break;
                case 'G': // g) Ingresar un fabricante a la base de datos 
                    sf.ingresarFabricante();
                    break;
                case 'H': // h) Editar un producto con datos a elección.
                    sp.modificarProductoPorCodigo();
                    break;
                case 'I': // i) Salir.
                    System.out.println("\nSaliendo...");
                    break;
                default:
                    throw new AssertionError();
            }

        } while (op != 'I');

    }
}
