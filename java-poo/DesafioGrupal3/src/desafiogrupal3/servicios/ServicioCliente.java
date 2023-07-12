/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

 */
package desafiogrupal3.servicios;

import desafiogrupal3.entidades.Cliente;
import java.util.ArrayList;
import java.util.Scanner;

public class ServicioCliente {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    private ArrayList<Cliente> listaClientes = new ArrayList<>();

    public void registrarCliente(String nombre, int edad, double altura, double peso, String objetivo) {
        Cliente cli = new Cliente(nombre, edad, altura, peso, objetivo);
        listaClientes.add(cli);
    }

    public void registrarClientePorTeclado(int cantidad) {
        for (int i = 0; i < cantidad; i++) {
            Cliente cli = new Cliente();
            System.out.println("\nRegistrando un cliente con el id: " + cli.getId());
            validarDatosCliente(cli);
            listaClientes.add(cli);
        }
    }

    public ArrayList obtenerClientes() {
        return listaClientes;
    }

    public void mostrarClientes() {
        System.out.println("\nMostrando listado actual de clientes...");
        for (Cliente cli : listaClientes) {
            System.out.println(cli);
        }
    }

    public void actualizarCliente(int id, String nombre, int edad, double altura, double peso, String objetivo) {
//        Cliente cli = new Cliente(nombre, edad, altura, peso, objetivo);
//        listaClientes.set(id, cli);
        int posicion = buscarClientePorId(id);
        Cliente cli = listaClientes.get(posicion);
        cli.setNombre(nombre);
        cli.setEdad(edad);
        cli.setAltura(altura);
        cli.setPeso(peso);
        cli.setObjetivo(objetivo);

//        listaClientes.set(id, cli);
//        listaClientes.get(posicion).setNombre(nombre);
//        listaClientes.get(posicion).setEdad(edad);
//        listaClientes.get(posicion).setAltura(altura);
//        listaClientes.get(posicion).setPeso(peso);
//        listaClientes.get(posicion).setObjetivo(objetivo);
    }

    public void actualizarClientePorTeclado() {
        int id;

//        Cliente cli = new Cliente();
        // Verifica que exista un Cliente en la posición id de listaClientes
        System.out.println("Se solicitó actualizar un cliente.");
        System.out.println("Verificando que exista un cliente con el id ingresado...");
        int posicion;
        do {
            System.out.print("Ingrese el id: ");
            id = leer.nextInt();
            posicion = buscarClientePorId(id);
        } while (posicion == -1);

        Cliente cli = listaClientes.get(buscarClientePorId(id));

        cli = validarDatosCliente(cli);
        actualizarCliente(posicion, cli.getNombre(), cli.getEdad(), cli.getAltura(), cli.getPeso(), cli.getObjetivo());
    }

    // si encuentra un cliente con el id solicitado, devuelve la posición del mismo en listaClientes.
    // Si no lo encuentra, devuelve -1
    public int buscarClientePorId(int id) {
        for (Cliente cli : listaClientes) {
            if (cli.getId() == id) {
                System.out.println("Se encontró un cliente con el id " + id);
                return listaClientes.indexOf(cli);
            }
        }
        System.out.println("No existe un cliente con el id " + id);
        return -1;
    }

    public Cliente validarDatosCliente(Cliente cli) {
        int edad;
        double altura;
        double peso;

        // Ingresa el nombre
        System.out.print("Ingrese el nombre: ");
        cli.setNombre(leer.next());

        // Verifica que edad esté entre 1 y 120
        do {
            System.out.print("Ingrese la edad: ");
            edad = leer.nextInt();
            if (edad < 1 && edad > 120) {
                System.out.println("Edad inválida. Ingrese un número entre 1 y 120.");
            }
        } while (edad < 1 && edad > 120);
        cli.setEdad(edad);

        // Verifica que altura esté entre... 0.50 y 2.50?
        do {
            System.out.print("Ingrese la altura: ");
            altura = leer.nextDouble();
            if (altura < 0.5 && altura > 2.5) {
                System.out.println("Altura inválida. Ingrese un número entre 0.5 y 2.5");
            }
        } while (altura < 0.5 && altura > 2.5);
        cli.setAltura(altura);

        // Verifica que peso esté entre... 30 y 300?
        do {
            System.out.print("Ingrese el peso: ");
            peso = leer.nextDouble();
            if (peso < 1 && peso > 300) {
                System.out.println("Peso inválido. Ingrese un número entre 30 y 300.");
            }
        } while (peso < 1 && peso > 300);
        cli.setPeso(peso);

        // Ingresa el objetivo
        System.out.print("Ingrese el objetivo: ");
        cli.setObjetivo(leer.next());

        return cli;
    }

    public void eliminarCliente(int id) {
        listaClientes.remove(id);
    }

    public void eliminarClientePorTeclado() {
        int id;

        System.out.print("Ingrese el ID a eliminar: ");
        id = leer.nextInt();

        eliminarCliente(buscarClientePorId(id));
    }
}
