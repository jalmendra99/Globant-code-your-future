/*
Java - colecciones - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 24

Implemente un programa para una Librería haciendo uso de un HashSet 
para evitar datos repetidos. Para ello, se debe crear una clase 
llamada Libro que guarde la información de cada uno de los libros de una Biblioteca. 
La clase Libro debe guardar el título del libro, autor, número de ejemplares 
y número de ejemplares prestados. 
También se creará en el main un HashSet de tipo Libro que guardará todos los libros creados. 
En el main tendremos un bucle que crea un objeto Libro pidiéndole al usuario todos sus datos 
y seteandolos en el Libro. Despues, ese Libro se guarda en el conjunto 
y se le pregunta al usuario si quiere crear otro Libro o no. 
La clase Librería contendrá además los siguientes métodos:

● Constructor por defecto.

● Constructor con parámetros.

● Métodos Setters/getters

● Método prestamo(): El usuario ingresa el titulo del libro que quiere prestar 
    y se lo busca en el conjunto. Si está en el conjunto, se llama con ese objeto Libro al método. 
    El método se incrementa de a uno, como un carrito de compras, el atributo ejemplares prestados, 
    del libro que ingresó el usuario. Esto sucederá cada vez que se realice un préstamo del libro. 
    No se podrán prestar libros de los que no queden ejemplares disponibles para prestar. 
    Devuelve true si se ha podido realizar la operación y false en caso contrario.

● Método devolucion(): El usuario ingresa el titulo del libro que quiere devolver 
    y se lo busca en el conjunto. Si está en el conjunto, se llama con ese objeto al método. 
    El método decrementa de a uno, como un carrito de compras, el atributo ejemplares prestados, 
    del libro seleccionado por el usuario. Esto sucederá cada vez que se produzca la devolución de un libro. 
    No se podrán devolver libros donde que no tengan ejemplares prestados. 
    Devuelve true si se ha podido realizar la operación y false en caso contrario.

● Método toString para mostrar los datos de los libros.

--

Fer V - Jalmendra99@gmail.com

 */
package Ej3Libreria;

import Ej3Libreria.entidad.Libro;
import Ej3Libreria.servicio.Libreria;
import java.util.Scanner;

public class Ej3 {

    
    private static Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public static void main(String[] args) {
        
        Libreria libreria = new Libreria();
        
        crearLibros(libreria);
        

    }

    /**
     *  En el main tendremos un bucle que crea un objeto Libro pidiéndole al usuario todos sus datos 
     *  y seteandolos en el Libro. Despues, ese Libro se guarda en el conjunto 
     *  y se le pregunta al usuario si quiere crear otro Libro o no. 
     */
    private static void crearLibros(Libreria libreria) {
        
        System.out.println("\nCreando libros..");
        
        Libro lib = new Libro();
        
        String continuar;
        
        do {
            System.out.print("Ingrese el titulo: ");
            lib.setTitulo(leer.next());
            
            System.out.print("Ingrese el autor: ");
            lib.setAutor(leer.next());
            
            System.out.print("Ingrese el número de ejemplares: ");
            lib.setNumeroDeEjemplares(leer.nextInt());

            libreria.agregarLibro(lib);
            
            System.out.print("¿Desea crear otro libro (s/n)? : ");
            continuar = leer.next();            
            
        } while (continuar.equalsIgnoreCase("S"));
    }




}
