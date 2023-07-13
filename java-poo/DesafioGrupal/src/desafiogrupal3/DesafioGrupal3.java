/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

Info: 
https://www.w3schools.com/java/java_arraylist.asp

 */
package desafiogrupal3;

import desafiogrupal3.servicios.ServicioCliente;
import desafiogrupal3.servicios.ServicioRutina;

public class DesafioGrupal3 {

    public static void main(String[] args) {

        ServicioCliente sc = new ServicioCliente();
        ServicioRutina sr = new ServicioRutina();

        // Agregamos 1 cliente solicitando los datos al usuario
        sc.registrarClientePorTeclado(1);

        // Agregamos 4 clientes hardcodeados...
        sc.registrarCliente("uno", 1, 1.1, 111, "primero");
        sc.registrarCliente("dos", 2, 2.2, 222, "dos");
        sc.registrarCliente("tres", 3, 3.3, 333, "tres");
        sc.registrarCliente("cuatro", 4, 4.4, 444, "cuatro");

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        // Actualizamos un cliente hardcodeado
        System.out.println("\nSe actualizará un cliente de la posición 0 del ArrayList (julio, 20, 1.81, 90, world peace)...");
        sc.actualizarCliente(0, "julio", 20, 1.81, 90, "World peace");

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        // Actualizamos un cliente solicitando los datos al usuario.
        System.out.println("\nSe actualizará un cliente soilcitando los datos al usuario...");
        sc.actualizarClientePorTeclado();

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        // Eliminamos un cliente hardcodeado
        System.out.println("\nSe eliminará el cliente de la posición 0 del ArrayList...");
        sc.eliminarCliente(0);

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        // Eliminamos un cliente solicitando los datos al usuario.
        System.out.println("\nSe eliminará un cliente solicitando los datos al usuario...");
        sc.eliminarClientePorTeclado();

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        System.out.println("\n-----------------------------------");
        System.out.println("Rutinas\n");

        // Agregamos 1 rutina solicitando los datos al usuario
        sr.crearRutinaPorTeclado(1);

        // Agregamos 4 rutinas hardcodeadas...
        sr.crearRutina("uno", 1, "primer nivel", "rutina primer nivel");
        sr.crearRutina("dos", 2, "segndo nivel", "rutina segndo nivel");
        sr.crearRutina("tres", 3, "tercer nivel", "rutina tercer nivel");
        sr.crearRutina("cuatro", 4, "cuarto nivel", "rutina cuarto nivel");

        // Muestra listado actual de rutinas
        sr.mostrarRutinas();

        // Actualizamos una rutina hardcodeada
        System.out.println("\nSe actualizará una rutina de la posición 0 (0, nuevo cero, etc...)");
        sr.actualizarRutina(0, "nuevo cero", 0, "nivel nuevo cero", "rutina nueva cero");

        // Muestra listado actual de rutinas
        sr.mostrarRutinas();

        // Actualizamos una rutina solicitando los datos al usuario.
        System.out.println("\nSe actualizará una rutina solicitando los datos al usuario...");
        sr.actualizarRutinaPorTeclado();

        // Muestra listado actual de rutinas
        sr.mostrarRutinas();

        // Eliminamos una rutina hardcodeada
        System.out.println("\nSe eliminará la rutina de la posición 0 del ArrayList...");
        sr.eliminarRutina(0);

        // Muestra listado actual de rutinas
        sr.mostrarRutinas();

        // Eliminamos una rutina solicitando los datos al usuario.
        System.out.println("\nSe eliminará una rutina solicitando los datos al usuario...");
        sr.eliminarRutinaPorTeclado();

        // Muestra listado actual de rutinas
        sr.mostrarRutinas();

    }

}
