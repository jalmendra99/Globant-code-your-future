/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 12 - Página 31

Fer V - Jalmendra99@gmail.com

 */
package Ej12Persona.entidad;

import java.util.Calendar;
import java.util.GregorianCalendar;

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
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public GregorianCalendar getFechaDeNacimiento() {
        return fechaDeNacimiento;
    }

    public void setFechaDeNacimiento(int anio, int mes, int dia) {
        fechaDeNacimiento.set(Calendar.YEAR, anio);
        fechaDeNacimiento.set(Calendar.MONTH, mes);
        fechaDeNacimiento.set(Calendar.DAY_OF_MONTH, dia);
    }

}
