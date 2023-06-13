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
package Ej13Curso;

import java.util.Scanner;

public class Curso {

    // Constante para jugar con distintas cantidades para el vector de alumnos.
    private final int CANT_ALUMNOS = 5;

    // Atributos
    private String nombreCurso;
    private int cantidadHorasPorDia;
    private int cantidadDiasPorSemana;
    private boolean turnoMañana;        // False=turno tarde.
    private double precioPorHora;
    String[] alumnos = new String[CANT_ALUMNOS];

    // Constructores
    public Curso() {
    }

    public Curso(String nombreCurso, int cantidadHorasPorDia, int cantidadDiasPorSemana, boolean turnoMañana, double precioPorHora) {
        this.nombreCurso = nombreCurso;
        this.cantidadHorasPorDia = cantidadHorasPorDia;
        this.cantidadDiasPorSemana = cantidadDiasPorSemana;
        this.turnoMañana = turnoMañana;
        this.precioPorHora = precioPorHora;
    }

    // Getters y setters
    public String getNombreCurso() {
        return nombreCurso;
    }

    public void setNombreCurso(String nombreCurso) {
        this.nombreCurso = nombreCurso;
    }

    public int getCantidadHorasPorDia() {
        return cantidadHorasPorDia;
    }

    public void setCantidadHorasPorDia(int cantidadHorasPorDia) {
        this.cantidadHorasPorDia = cantidadHorasPorDia;
    }

    public int getCantidadDiasPorSemana() {
        return cantidadDiasPorSemana;
    }

    public void setCantidadDiasPorSemana(int cantidadDiasPorSemana) {
        this.cantidadDiasPorSemana = cantidadDiasPorSemana;
    }

    public boolean isTurnoMañana() {
        return turnoMañana;
    }

    public void setTurnoMañana(boolean turnoMañana) {
        this.turnoMañana = turnoMañana;
    }

    public double getPrecioPorHora() {
        return precioPorHora;
    }

    public void setPrecioPorHora(double precioPorHora) {
        this.precioPorHora = precioPorHora;
    }

    public String[] getAlumnos() {
        return alumnos;
    }

    public void setAlumnos(String[] alumnos) {
        this.alumnos = alumnos;
    }

    // Métodos.
    public void cargarAlumnos() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        for (int i = 0; i < alumnos.length; i++) {
            System.out.print("Ingrese el nombre para el alumno #" + (i + 1) + ": ");
            alumnos[i] = leer.nextLine();
        }
    }

    public void crearCurso() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        System.out.print("Ingrese el nombre del curso: ");
        nombreCurso = leer.nextLine();

        // Se fuerza a que la cantidad de días ingresada sea entre 1 y 7.
        cantidadDiasPorSemana = -1;
        while (cantidadDiasPorSemana < 1 || cantidadDiasPorSemana > 7) {
            System.out.print("Ingrese la cantidad de días por semana (1-7): ");
            cantidadDiasPorSemana = leer.nextInt();
            if (cantidadDiasPorSemana < 1 || cantidadDiasPorSemana > 7) {
                System.out.println("Error al ingresar la cantidad de días. Elija un número entre 1 y 7.");
            }
        }

        // Se fuerza a que la cantidad de horas por día ingresada sea entre 1 y 24.
        cantidadHorasPorDia = -1;
        while (cantidadHorasPorDia < 1 || cantidadHorasPorDia > 24) {
            System.out.print("Ingrese la cantidad de horas por día (1-24): ");
            cantidadHorasPorDia = leer.nextInt();
            if (cantidadHorasPorDia < 1 || cantidadHorasPorDia > 24) {
                System.out.println("Error al ingresar la cantidad de horas. Elija un número entre 1 y 24.");
            }
        }

        // Se fuerza a que el turno seleccionado sea mañana o tarde.
        boolean ingresarTurno = true;
        String turnoIngresado;
        while (ingresarTurno) {
            ingresarTurno = false;
            System.out.print("Ingrese el turno (mañana/tarde): ");
            turnoIngresado = leer.next();

            if (turnoIngresado.toLowerCase().equals("mañana")) {
                turnoMañana = true;
            } else if (turnoIngresado.toLowerCase().equals("tarde")) {
                turnoMañana = false;
            } else {
                System.out.println("Error al ingresar el turno");
                ingresarTurno = true;
            }
        }

        System.out.print("Ingrese el precio por hora: ");
        precioPorHora = leer.nextDouble();

        cargarAlumnos();
    }

    public double calcularGananciaSemanal() {
        return cantidadHorasPorDia * precioPorHora * alumnos.length * cantidadDiasPorSemana;
    }

}
