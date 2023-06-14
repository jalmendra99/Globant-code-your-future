/*
Java-POO - Actividad extra 1.
Ejercicio 1 - Página 2

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio1;

public class Ejercicio1 {

    public static void main(String[] args) {

        // Crea tres vehículos
        Vehiculo auto = new Vehiculo("automóvil");
        Vehiculo moto = new Vehiculo("motocicleta");
        Vehiculo bici = new Vehiculo("bicicleta");

        // Avanzan 5 segundos
        System.out.println("En 5 segundos...");
        System.out.println("El auto recorrió " + auto.moverse(5) + " metros.");
        System.out.println("La moto recorrió " + moto.moverse(5) + " metros.");
        System.out.println("La bici recorrió " + bici.moverse(5) + " metros.");

        // Avanzan 10 segundos
        System.out.println("En 10 segundos...");
        System.out.println("El auto recorrió " + auto.moverse(10) + " metros.");
        System.out.println("La moto recorrió " + moto.moverse(10) + " metros.");
        System.out.println("La bici recorrió " + bici.moverse(10) + " metros.");

        // Avanzan 1 minuto (60 segundos)
        System.out.println("En 1 minuto...");
        System.out.println("El auto recorrió " + auto.moverse(60) + " metros.");
        System.out.println("La moto recorrió " + moto.moverse(60) + " metros.");
        System.out.println("La bici recorrió " + bici.moverse(60) + " metros.");

        // Ver cual avanzó más luego de avanzar por
        // 5 minutos (300 segundos) y frenar.
        int recorridoAuto = auto.moverse(300) + auto.frenar();
        int recorridoMoto = moto.moverse(300) + moto.frenar();
        int recorridoBici = bici.moverse(300) + bici.frenar();
        System.out.println("Luego de avanzar por 5 minutos y frenar...");
        System.out.println("El auto recorrió " + recorridoAuto + " metros.");
        System.out.println("La moto recorrió " + recorridoMoto + " metros.");
        System.out.println("La bici recorrió " + recorridoBici + " metros.");

        System.out.print("Y en este último caso el vehículo que más avanzó fué ");

        if (recorridoAuto > recorridoMoto && recorridoAuto > recorridoBici) {
            System.out.println("el auto.");
        } else if (recorridoMoto > recorridoAuto && recorridoMoto > recorridoBici) {
            System.out.println("la moto.");
        } else {
            System.out.println("la bici.");
        }

    }
}
