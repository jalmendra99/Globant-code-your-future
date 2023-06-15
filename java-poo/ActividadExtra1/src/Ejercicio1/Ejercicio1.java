/*
Java-POO - Actividad extra 1.
Ejercicio 1 - Página 2

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio1;

import Ejercicio1.entidad.Vehiculo;
import Ejercicio1.servicio.VehiculoService;

public class Ejercicio1 {

    public static void main(String[] args) {

        // Crea una clase VehiculoService para interactuar con clases Vehiculo
        VehiculoService vs = new VehiculoService();
        
        Vehiculo auto = vs.crearVehiculo("automovil");
        Vehiculo moto = vs.crearVehiculo("motocicleta");
        Vehiculo bici = vs.crearVehiculo("bicicleta");
        
        // Los vehículos avanzan 5 segundos
        vs.mostrarMovimiento(auto, 5);
        vs.mostrarMovimiento(moto, 5);
        vs.mostrarMovimiento(bici, 5);

        // Avanzan 10 segundos
        vs.mostrarMovimiento(auto, 10);
        vs.mostrarMovimiento(moto, 10);
        vs.mostrarMovimiento(bici, 10);

        // Avanzan 1 minuto (60 segundos)
        vs.mostrarMovimiento(auto, 60);
        vs.mostrarMovimiento(moto, 60);
        vs.mostrarMovimiento(bici, 60);

        // Ver cual avanzó más luego de avanzar por
        // 5 minutos (300 segundos) y frenar.
        int recorridoAuto = vs.moverseYFrenar(auto,300);
        int recorridoMoto = vs.moverseYFrenar(moto,300);
        int recorridoBici = vs.moverseYFrenar(bici,300);
        
        System.out.println("Luego de avanzar por 5 minutos (300 segundos) y frenar...");
        vs.mostrarMovimientoConFrenada(auto, 300);
        vs.mostrarMovimientoConFrenada(moto, 300);
        vs.mostrarMovimientoConFrenada(bici, 300);
//        System.out.print("El auto " + recorridoAuto + " metros, ");
//        System.out.print("la moto " + recorridoMoto + " metros y ");
//        System.out.println("la bici " + recorridoBici + " metros.");

        System.out.print("En este último caso el vehículo que más avanzó fué ");

        // Se calcula el mayor recorrido y se muestra por pantalla
        if (recorridoAuto > recorridoMoto && recorridoAuto > recorridoBici) {
            System.out.println("el auto.");
        } else if (recorridoMoto > recorridoAuto && recorridoMoto > recorridoBici) {
            System.out.println("la moto.");
        } else {
            System.out.println("la bici.");
        }
    }
}
