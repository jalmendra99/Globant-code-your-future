/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 13 - Página 32

Uso de vectores como atributos de clase
Un profesor particular está dando cursos para grupos de cinco alumnos 
y necesita un programa para organizar la información de cada curso. 
Para ello, crearemos una clase entidad llamada Curso, cuyos atributos serán: 
nombreCurso, cantidadHorasPorDia, cantidadDiasPorSemana, turno (mañana o tarde),  
precioPorHora y alumnos. Donde alumnos es un arreglo de tipo String de dimensión 5 (cinco), 
donde se alojarán los nombres de cada alumno. A continuación, se implementarán los siguientes métodos:
* Un constructor por defecto.
* Un constructor con todos los atributos como parámetro.
* Métodos getters y setters de cada atributo.
* método cargarAlumnos(): este método le permitirá al usuario ingresar los alumnos 
    que asisten a las clases. Nosotros nos encargaremos de almacenar esta información 
    en un arreglo e iterar con un bucle, solicitando en cada repetición que se ingrese 
    el nombre de cada alumno.
* Método crearCurso(): el método crear curso, le pide los valores de los atributos al usuario 
    y después se le asignan a sus respectivos atributos para llenar el objeto Curso. 
    En este método invocaremos al método cargarAlumnos() para asignarle valor al atributo alumnos
* Método calcularGananciaSemanal(): este método se encarga de calcular la ganancia 
    en una semana por curso. Para ello, se deben multiplicar la cantidad de horas por día, 
    el precio por hora, la cantidad de alumnos y la cantidad de días a la semana que se repite el encuentro.


Fer V - Jalmendra99@gmail.com

 */
package Ej13Curso.servicio;

import Ej13Curso.entidad.*;
import java.util.Scanner;

public class CursoService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Curso crearCurso() {

        Curso cu = new Curso();

        System.out.print("Ingrese el nombre del curso: ");
        cu.setNombreCurso(leer.next());

        // Se fuerza a que la cantidad de días ingresada sea entre 1 y 7.
        int cantidadDiasPorSemana = -1;
        while (cantidadDiasPorSemana < 1 || cantidadDiasPorSemana > 7) {
            System.out.print("Ingrese la cantidad de días por semana (1-7): ");
            cantidadDiasPorSemana = leer.nextInt();
            if (cantidadDiasPorSemana < 1 || cantidadDiasPorSemana > 7) {
                System.out.println("Error al ingresar la cantidad de días. Elija un número entre 1 y 7.");
            }
        }
        cu.setCantidadDiasPorSemana(cantidadDiasPorSemana);

        // Se fuerza a que la cantidad de horas por día ingresada sea entre 1 y 24.
        int cantidadHorasPorDia = -1;
        while (cantidadHorasPorDia < 1 || cantidadHorasPorDia > 24) {
            System.out.print("Ingrese la cantidad de horas por día (1-24): ");
            cantidadHorasPorDia = leer.nextInt();
            if (cantidadHorasPorDia < 1 || cantidadHorasPorDia > 24) {
                System.out.println("Error al ingresar la cantidad de horas. Elija un número entre 1 y 24.");
            }
        }
        cu.setCantidadHorasPorDia(cantidadHorasPorDia);

        // Se fuerza a que el turno seleccionado sea mañana o tarde.
        boolean ingresarTurno = true;
        boolean turnoManiana = false;
        String turnoIngresado;
        while (ingresarTurno) {
            ingresarTurno = false;
            System.out.print("Ingrese el turno (mañana/tarde): ");
            turnoIngresado = leer.next();

            if (turnoIngresado.toLowerCase().equals("mañana")) {
                turnoManiana = true;
            } else if (turnoIngresado.toLowerCase().equals("tarde")) {
                turnoManiana = false;
            } else {
                System.out.println("Error al ingresar el turno");
                ingresarTurno = true;
            }
        }
        cu.setTurnoManiana(turnoManiana);

        System.out.print("Ingrese el precio por hora: ");
        cu.setPrecioPorHora(leer.nextDouble());

        cargarAlumnos(cu);

        return cu;
    }

    public void cargarAlumnos(Curso cu) {
        for (int i = 0; i < cu.getAlumnos().length; i++) {
            System.out.print("Ingrese el nombre para el alumno #" + (i + 1) + ": ");
            cu.getAlumnos()[i] = leer.next();
        }
    }

    public double calcularGananciaSemanal(Curso cu) {
        return cu.getCantidadHorasPorDia()
                * cu.getPrecioPorHora()
                * cu.getAlumnos().length
                * cu.getCantidadDiasPorSemana();
    }

}
