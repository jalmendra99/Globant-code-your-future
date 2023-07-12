/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

 */
package desafiogrupal3.servicios;

import desafiogrupal3.entidades.Cliente;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ServicioCliente {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    private List<Cliente> listaClientes = new ArrayList<>();

    public void registrarCliente(int cantidad) {
        for (int i = 0; i < cantidad; i++) {
            Cliente cli = new Cliente();
            System.out.print("Ingrese el id: ");
            cli.setId(leer.nextInt());
            System.out.print("Ingrese el nombre: ");
            cli.setNombre(leer.next());
            System.out.print("Ingrese la edad: ");
            cli.setEdad(leer.nextInt());
            System.out.print("Ingrese el peso: ");
            cli.setPeso(leer.nextDouble());
            System.out.print("Ingrese la altura: ");
            cli.setPeso(leer.nextDouble());
            System.out.print("Ingrese el objetivo: ");
            cli.setObjetivo(leer.next());
            listaClientes.add(cli);
        }
    }

    public List obtenerClientes() {
        return listaClientes;
    }

    // 0, juan, 10, 2, 
    public void actualizarCliente(int id, String nombre, int edad, double altura, double peso, String objetivo) {
        Cliente cli = new Cliente(id, nombre, edad, altura, peso, objetivo);
        listaClientes.set(id, cli);
    }

    public void ingresarDatosParaActualizar() {
        int id;
        String nombre;
        int edad;
        double altura;
        double peso;
        String objetivo;

        System.out.print("Ingrese el id: ");
        id = leer.nextInt();
        System.out.print("Ingrese el nombre: ");
        nombre = leer.next();
        System.out.print("Ingrese la edad: ");
        edad = leer.nextInt();
        System.out.print("Ingrese el peso: ");
        peso = leer.nextDouble();
        System.out.print("Ingrese la altura: ");
        altura = leer.nextDouble();
        System.out.print("Ingrese el objetivo: ");
        objetivo = leer.next();

        actualizarCliente(id, nombre, edad, altura, peso, objetivo);
    }

    public void eliminarCliente(int id) {
        listaClientes.remove(id);
    }

    public void ingresarIDParaEliminarCliente() {
        int id;

        System.out.print("Ingrese el ID a eliminar: ");
        id = leer.nextInt();

        eliminarCliente(id);
    }
}
