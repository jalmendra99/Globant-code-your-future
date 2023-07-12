/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

 */
package desafiogrupal3.servicios;

import desafiogrupal3.entidades.Rutina;
import java.util.ArrayList;
import java.util.Scanner;

public class ServicioRutina {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    private ArrayList<Rutina> listaRutinas = new ArrayList<>();

    public void crearRutina(String nombre, int duracion, String nivelDificultad, String descripcion) {

        Rutina rut = new Rutina(nombre, duracion, nivelDificultad, descripcion);
        listaRutinas.add(rut);
    }

    public void crearRutinaPorTeclado(int cantidad) {
        for (int i = 0; i < cantidad; i++) {
            Rutina rut = new Rutina();
            System.out.println("\nRegistrando una rutina con el id: " + rut.getId());
            validarDatosRutina(rut);
            listaRutinas.add(rut);
        }
    }

    public ArrayList obtenerRutinas() {
        return listaRutinas;
    }

    public void mostrarRutinas() {
        System.out.println("\nMostrando listado actual de rutinas...");
        for (Rutina rut : listaRutinas) {
            System.out.println(rut);
        }
    }

    public void actualizarRutina(int id, String nombre, int duracion, String nivelDificultad, String descripcion) {
        Rutina rut = new Rutina(nombre, duracion, nivelDificultad, descripcion);
        listaRutinas.set(id, rut);
    }

    public void actualizarRutinaPorTeclado() {
        int id;

        Rutina rut = new Rutina();

        // Verifica que exista un Rutina en la posición id de listaRutinas
        System.out.println("Se solicitó actualizar una rutina.");
        System.out.println("Verificando que exista una rutina con el id ingresado...");
        int posicion;
        do {
            System.out.print("Ingrese el id: ");
            id = leer.nextInt();
            posicion = buscarRutinaPorId(id);
        } while (posicion == -1);

        rut = validarDatosRutina(rut);
        actualizarRutina(posicion, rut.getNombre(),
                rut.getDuracion(),
                rut.getNivelDificultad(),
                rut.getDescripcion()
        );
    }

    // si encuentra una rutina con el id solicitado, devuelve la posición de la misma en listaRutinas.
    // Si no la encuentra, devuelve -1
    public int buscarRutinaPorId(int id) {
        for (Rutina rut : listaRutinas) {
            if (rut.getId() == id) {
                System.out.println("Se encontró una rutina con el id " + id);
                return listaRutinas.indexOf(rut);
            }
        }
        System.out.println("No existe una rutina con el id " + id);
        return -1;
    }

    public Rutina validarDatosRutina(Rutina rut) {
        double altura;
        double peso;

        // Ingresa el nombre
        System.out.print("Ingrese el nombre: ");
        rut.setNombre(leer.next());

        // Ingresa la duración
        System.out.print("Ingrese la duración: ");
        rut.setDuracion(leer.nextInt());

        // Ingresa el nivel de dificultad
        System.out.print("Ingrese el nivel de dificultad: ");
        rut.setNivelDificultad(leer.next());

        // Ingresa la descripcion
        System.out.print("Ingrese la descripción: ");
        rut.setDescripcion(leer.next());

        return rut;
    }

    public void eliminarRutina(int id) {
        listaRutinas.remove(id);
    }

    public void eliminarRutinaPorTeclado() {
        int id;

        System.out.print("Ingrese el ID a eliminar: ");
        id = leer.nextInt();

        eliminarRutina(buscarRutinaPorId(id));
    }

}
