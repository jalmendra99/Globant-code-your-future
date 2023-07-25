/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 5 - Página 23

Se requiere un programa que lea y guarde países, y para evitar que se ingresen repetidos 
usaremos un conjunto. El programa pedirá un país en un bucle, se guardará el país en el conjunto 
y después se le preguntará al usuario si quiere guardar otro país o si quiere salir, 
si decide salir, se mostrará todos los países guardados en el conjunto. 
(Recordemos hacer los servicios en la clase correspondiente)
Después deberemos mostrar el conjunto ordenado alfabéticamente: para esto 
recordar cómo se ordena un conjunto.
Por último, al usuario se le pedirá un país y se recorrerá el conjunto con un Iterator, 
se buscará el país en el conjunto y si está en el conjunto se eliminará el país 
que ingresó el usuario y se mostrará el conjunto. 
Si el país no se encuentra en el conjunto se le informará al usuario.

Fer V - Jalmendra99@gmail.com

 */
package Ej5Paises.servicio;

import Ej5Paises.utilidad.PaisComparators;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;

public class PaisService {

    private HashSet<String> paises = new HashSet<String>();
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public void crearPaises() {
        String pais;
        System.out.println("Agregando países (Ingrese una línea en blanco para terminar de ingresar)...");
        do {
            System.out.print("Ingrese el nombre del país: ");
            pais = leer.next();
            if (!pais.equals("")) {
                paises.add(pais);
            }
        } while (!pais.equals(""));
        mostrarPaises();
    }

    public void mostrarPaises() {
        Iterator paisesIterator = paises.iterator();

        for (Iterator<String> iterator = paises.iterator(); iterator.hasNext();) {
            System.out.println(iterator.next());
        }
    }

    public void ordenarAlfabeticamente() {
        ArrayList<String> paisesLista = new ArrayList(paises);
        Collections.sort(paisesLista, PaisComparators.ordenar);

        // No se usó mostrarPaises() porque muestra el hashset, no este ArrayList.
        for (Iterator<String> iterator = paisesLista.iterator(); iterator.hasNext();) {
            System.out.println(iterator.next());
        }
    }

    public void eliminarPais(String nombre) {

        Iterator paisesIterator = paises.iterator();
        boolean encontrado = false;

        for (Iterator<String> iterator = paises.iterator(); iterator.hasNext();) {
            if (iterator.next().equalsIgnoreCase(nombre)) {
                iterator.remove();
                encontrado = true;
            }
        }

        if (!encontrado) {
            System.out.println("El país " + nombre + " no fué encontrado.");
        } else {
            System.out.println("El país " + nombre + " fué eliminado.");
            mostrarPaises();
        }
    }

    public void eliminarPaisPorTeclado() {
        System.out.print("Ingrese el nombre del país a eliminar: ");
        eliminarPais(leer.next());
    }

}
