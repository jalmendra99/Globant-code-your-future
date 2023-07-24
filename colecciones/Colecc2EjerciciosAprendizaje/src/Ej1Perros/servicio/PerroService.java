/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 1 y 2 - Página 22

Fer V - Jalmendra99@gmail.com

 */
package Ej1Perros.servicio;

import Ej1Perros.entidad.Perro;
import Ej1Perros.utilidad.Comparadores;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Scanner;

public class PerroService {

    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    private ArrayList<Perro> perros = new ArrayList();

    public void mostrarMenu() {
        int opcion;
        do {
            System.out.println("Opciones:");
            System.out.println("1. Ingresar razas de perro a la lista.");
            System.out.println("2. Mostrar la lista");
            System.out.println("3. Eliminar una raza de la lista.");
            System.out.println("4. Salir.");
            opcion = leer.nextInt();
            switch (opcion) {
                case 1:
                    agregarPerros(perros);
                    break;
                case 2:
                    mostrarPerros();
                    break;
                case 3:
                    eliminarPerro();
                    break;
                default: // 4 o cualquier otra cosa sale..
                    System.out.println("Saliendo...");
            }
        } while (opcion != 4);

        mostrarPerros();
    }

    public void agregarPerros(ArrayList<Perro> perros) {
        String opcion;
        do {
            System.out.println("Agregando un perro:");
            System.out.print("Ingrese la raza: ");
            perros.add(new Perro(leer.next()));
            System.out.print("¿Desea continuar ingresando datos? (s/n): ");
            opcion = leer.next();
        } while (opcion.equalsIgnoreCase("s"));
    }

    public void mostrarPerros() {
        System.out.println("Mostrando todos los perros en el órden que fueron ingresados:");
        for (Perro perro : perros) {
            System.out.println(perro);
        }
    }

    public void mostrarPerrosOrdenados() {
        System.out.println("Mostrando todos los perros de manera ordenada (alfabéticamente):");
        Collections.sort(perros, Comparadores.ordenarPorRazaAlfabeticamente);
        for (Perro pe : perros) {
            System.out.println(pe);
        }
    }

    public void eliminarPerro() {
        System.out.print("Ingrese la raza de perro a eliminar de la lista: ");
        eliminarPerro(leer.next());
    }

    public void eliminarPerro(String raza) {
        System.out.println("Intentando eliminar la raza " + raza + " de la lista.");
        Iterator<Perro> it = perros.iterator();
        while (it.hasNext()) {
            String razaActual = it.next().getRaza();
            if (razaActual.equalsIgnoreCase(raza)) {
                it.remove();
                System.out.println("Se eliminó la raza " + raza + " de la lista.");
            }
        }
        mostrarPerrosOrdenados();
    }
}
