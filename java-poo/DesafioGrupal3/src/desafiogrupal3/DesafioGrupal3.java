/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

Info: 
https://www.w3schools.com/java/java_arraylist.asp

 */
package desafiogrupal3;

import desafiogrupal3.entidades.Cliente;
import desafiogrupal3.servicios.ServicioCliente;

public class DesafioGrupal3 {

    public static void main(String[] args) {

        ServicioCliente sc = new ServicioCliente();

        // Agregamos 2 clientes
        sc.registrarCliente(2);

        // Actualizamos un cliente.
        sc.ingresarDatosParaActualizar();

        // Eliminamos un cliente
        sc.ingresarIDParaEliminarCliente();

        // Obtenemos los clientes y los mostramos
        sc.obtenerClientes();

    }

}
