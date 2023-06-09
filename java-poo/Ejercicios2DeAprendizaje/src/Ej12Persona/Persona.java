/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 12 - Página 31

Fer V - Jalmendra99@gmail.com

 */
package Ej12Persona;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Scanner;

public class Persona {

    // Atributos
    private String nombre;
    private GregorianCalendar fechaDeNacimiento = new GregorianCalendar();

    // Constructores
    public Persona() {
    }

    public Persona(String nombre, int anio, int mes, int dia) {
        this.nombre = nombre;
        this.setFechaDeNacimiento(anio, mes, dia);
    }

    // Getters y setters
    public GregorianCalendar getFechaDeNacimiento() {
        return fechaDeNacimiento;
    }

    public void setFechaDeNacimiento(int anio, int mes, int dia) {
        fechaDeNacimiento.set(Calendar.YEAR, anio);
        fechaDeNacimiento.set(Calendar.MONTH, mes);
        fechaDeNacimiento.set(Calendar.DAY_OF_MONTH, dia);
    }

    // Métodos
    public void crearPersona() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        int anio, mes, dia;

        System.out.print("Ingrese el nombre de la persona: ");
        nombre = leer.nextLine();

        System.out.print("Ingrese el año de nacimiento: ");
        anio = leer.nextInt();

        System.out.print("Ingrese el mes de nacimiento: ");
        mes = leer.nextInt();

        System.out.print("Ingrese el día de nacimiento: ");
        dia = leer.nextInt();

        setFechaDeNacimiento(anio, mes, dia);
    }

    public int calcularEdad() {
        GregorianCalendar hoy = new GregorianCalendar();
        return hoy.get(Calendar.YEAR) - (fechaDeNacimiento.get(Calendar.YEAR));

    }

    public boolean menorQue(int edad) {
        return this.calcularEdad() < edad;
    }

    public void mostrarPersona() {
        System.out.println("Nombre: " + nombre);
        System.out.println("Edad: " + calcularEdad());
        System.out.println("Fecha de nacimiento: "
                + fechaDeNacimiento.get(Calendar.DAY_OF_MONTH) + "/"
                + fechaDeNacimiento.get(Calendar.MONTH) + "/"
                + fechaDeNacimiento.get(Calendar.YEAR) + ".");
    }
}
