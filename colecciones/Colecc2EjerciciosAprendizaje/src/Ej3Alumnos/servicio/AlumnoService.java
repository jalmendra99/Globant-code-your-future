/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 22

Fer V - Jalmendra99@gmail.com

 */
package Ej3Alumnos.servicio;

import Ej3Alumnos.entidad.Alumno;
import java.util.ArrayList;
import java.util.Scanner;

public class AlumnoService {

    // Atributos
    private ArrayList<Alumno> alumnos = new ArrayList<Alumno>();
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    // Métodos
    public void crearAlumnos() {

        String opcion;
        Alumno a;

        do {

            System.out.print("Ingrese el nombre del alumno: ");

            a = new Alumno();
            a.setNombre(leer.next());

            for (int i = 0; i < 3; i++) {
                System.out.print("Ingrese la nota # " + (i+1) + ": ");
                a.agregarNota(leer.nextInt());
            }

            // Se agrega el alumno recién creado al listado de alumnos.
            alumnos.add(a);

            System.out.print("¿Desea ingresar otro alumno? (s/n): ");
            opcion = leer.next();

        } while (opcion.equalsIgnoreCase("s"));

    }

    public void notaFinal() {
        String opcion;
        String nombre;
        Alumno a;
        double nota;
        do {
            System.out.println("Viendo la nota final de un alumno..");
            System.out.print("Ingrese el nombre del alumno: ");
            nombre = leer.next();
            a = buscarAlumnoPorNombre(nombre);

            if (a != null) {
                nota = calcularNotaFinal(a);
                if (nota != 0) {
                    System.out.println("La nota final del alumno " + nombre + " es " + nota + ".");
                }

            } else {
                System.out.println("No se encontró el alumno con nombre " + nombre + ".");
            }

            System.out.print("¿Desea ver la nota final de otro alumno? (s/n): ");
            opcion = leer.next();
        } while (opcion.equalsIgnoreCase("s"));
    }

    public Alumno buscarAlumnoPorNombre(String nombre) {
        for (Alumno alumno : alumnos) {
            if (alumno.getNombre().equals(nombre)) {
                return alumno;
            }
        }
        return null;
    }

    private double calcularNotaFinal(Alumno a) {
        double promedioFinal = 0;
        for (Integer nota : a.getNotas()) {
            promedioFinal += nota;
        }
        int cantidadDeNotas = a.getNotas().size(); // Debería ser siempre 3

        if (cantidadDeNotas > 0) {
            promedioFinal /= (double) cantidadDeNotas;
        } else {
            System.out.println("No se guardaron notas para este alumno.");
            return 0;
        }

        return promedioFinal;
    }

}
