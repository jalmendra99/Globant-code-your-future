/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

Info: 
https://www.w3schools.com/java/java_arraylist.asp

 */
package desafiogrupal3;

import desafiogrupal3.servicios.ServicioCliente;

public class DesafioGrupal3 {

    public static void main(String[] args) {

        ServicioCliente sc = new ServicioCliente();

        // Agregamos 2 clientes
        sc.registrarCliente(2);

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        // Actualizamos un cliente hardcodeado
        System.out.println("Se actualizará un cliente de la posición 0 del ArrayList (julio, 20, 1.81, 90, world peace)...");
        sc.actualizarCliente(0, "julio", 20, 1.81, 90, "World peace");

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        // Actualizamos un cliente solicitando los datos al usuario.
        System.out.println("Se actualizará un cliente soilcitando los datos al usuario...");
        sc.actualizarClientePorTeclado();

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        // Eliminamos un cliente hardcodeado
        System.out.println("Se eliminará el cliente de la posición 0 del ArrayList...");
        sc.eliminarCliente(0);

        // Muestra listado actual de clientes
        sc.mostrarClientes();

        // Eliminamos un cliente solicitando los datos al usuario.
        System.out.println("Se eliminará un cliente solicitando los datos al usuario...");
        sc.eliminarClientePorTeclado();

        // Muestra listado actual de clientes
        sc.mostrarClientes();

    }

}
