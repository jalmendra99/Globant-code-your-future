/*
Java-POO - Actividad extra 1.
Ejercicio 1 - Página 2

Crear una clase "Vehículo" con atributos como "marca", "modelo", "año" y "tipo" 
(En tipo, vamos a indicar si es un automóvil, una motocicleta, o una bicicleta). 
El vehículo debe tener los métodos de moverse y frenar:
Moverse: Es la cantidad de metros que avanzará por segundo. 
Frenar: Dejará de avanzar y se frenará 2 metros más adelante. 

En el caso de la bicicleta, se frenará y no avanzará más metros.
Referencias: 
Un automóvil avanza 3 metros por segundo. 
Una motocicleta avanza 2 metros por segundo. 
Una bicicleta avanza 1 metro por segundo. 
- Una vez realizado el programa, crear 3 vehículos diferentes 
(entre todos elegir que tipo de vehículo es), y mostrar por pantalla 
cuanto avanzan si se mueve durante 5 segundos, durante 10 segundos y durante 1 minuto. 
Luego mostrar que vehículo logró llegar más lejos luego de frenar, tras avanzar durante 5 minutos, 
y cual fue la cantidad de metros que avanzó.


Fer V - Jalmendra99@gmail.com

 */
package Ejercicio1;

import Ejercicio1.entidad.Vehiculo;
import Ejercicio1.servicio.VehiculoService;

public class Ejercicio1 {

    public static void main(String[] args) {

        // Crea una clase VehiculoService para interactuar con clases Vehiculo.
        VehiculoService vs = new VehiculoService();

        // Se crean tres vehículos de tipos distintos.
        Vehiculo[] vehiculos = new Vehiculo[3];
        vehiculos[0] = vs.crearVehiculo("automovil");
        vehiculos[1] = vs.crearVehiculo("motocicleta");
        vehiculos[2] = vs.crearVehiculo("bicicleta");

        // Los vehículos se mueven 5 segundos. Se muestra en pantalla cuanto avanzan.
        for (Vehiculo ve : vehiculos) {
            vs.mostrarMovimiento(ve, 5);
        }

        // ...10 segundos
        for (Vehiculo ve : vehiculos) {
            vs.mostrarMovimiento(ve, 10);
        }

        // ...1 minuto (60 segundos)
        for (Vehiculo ve : vehiculos) {
            vs.mostrarMovimiento(ve, 60);
        }

        // Ver que vehículo avanzó más luego de moverse por
        // 5 minutos (300 segundos) **y frenar**.
        for (Vehiculo ve : vehiculos) {
            vs.mostrarMovimientoConFrenada(ve, 300);
        }

        // Muestra cual de todos fué el vehículo que avanzó más luego de 
        // 5 minutos (300 segundos) **y frenar**.
        vs.mostrarCualRecorreMas(vehiculos, 300);
    }
}
