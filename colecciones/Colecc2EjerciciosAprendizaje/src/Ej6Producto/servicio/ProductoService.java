/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 6 - Página 23

Se necesita una aplicación para una tienda en la cual queremos almacenar 
los distintos productos que venderemos y el precio que tendrán. Además, se necesita 
que la aplicación cuente con las funciones básicas.
Estas las realizaremos en el servicio. Como, introducir un elemento, modificar su precio, 
eliminar un producto y mostrar los productos que tenemos con su precio (Utilizar Hashmap). 
El HashMap tendrá de llave el nombre del producto y de valor el precio. 
Realizar un menú para lograr todas las acciones previamente mencionadas.


---
Info: 
https://stackoverflow.com/questions/1066589/iterate-through-a-hashmap


Fer V - Jalmendra99@gmail.com

 */
package Ej6Producto.servicio;

import java.util.HashMap;
import java.util.Scanner;

public class ProductoService {

    // Atributos
    private HashMap<String, Double> productos = new HashMap();
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public void menu() {
        int opcion;
        do {
            System.out.println("\nMenú de opciones:");
            System.out.println("1. Introducir un producto");
            System.out.println("2. Modificar precio de un producto");
            System.out.println("3. Eliminar un producto");
            System.out.println("4. Mostrar productos con precio");
            System.out.println("5. Salir.");
            System.out.print("Ingrese una opción: ");
            opcion = leer.nextInt();
            switch (opcion) {
                case 1:
                    introducirProducto();
                    break;
                case 2:
                    modificarPrecio();
                    break;
                case 3:
                    eliminarProducto();
                    break;
                case 4:
                    mostrarProductosConPrecio();
                    break;
                case 5:
                    System.out.println("\nSaliendo..");
                    break;
                default:
                    System.out.println("Opción desconocida. Elija denuevo.");
            }
        } while (opcion != 5);
    }

    public void introducirProducto() {
        String nombre;
        Double precio;
        System.out.println("\nIngresando productos... ");
        System.err.print("Ingrese el nombre del producto: ");
        nombre = leer.next();

        System.out.print("Ingrese el precio: ");
        precio = leer.nextDouble();

        productos.put(nombre, precio);

    }

    public void modificarPrecio() {
        String nombre;
        Double precio;
        System.out.print("\nIngrese el nombre del producto para modificarle el precio: ");
        nombre = leer.next();

        if (productos.containsKey(nombre)) {
            System.out.print("Ingrese el nuevo precio para el producto: ");
            precio = leer.nextDouble();
            productos.put(nombre, precio);
        } else {
            System.out.println("No existe un producto con ese nombre");
        }

    }

    public void eliminarProducto() {
        String nombre;
        System.out.print("\nIngrese el nombre del producto a eliminar: ");
        nombre = leer.next();
        productos.remove(nombre);
    }

    public void mostrarProductosConPrecio() {
        System.out.println("\nMostrando productos con precio:");
        for (HashMap.Entry<String, Double> entry : productos.entrySet()) {
            if (entry.getValue() != 0) {
                System.out.println(entry.getKey() + ", $ " + entry.getValue());
            }
        }
    }

}
