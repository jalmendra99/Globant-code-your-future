/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 4 - Página 10

Fer V - Jalmendra99@gmail.com

4. Gestor de Tareas:
Crea una clase TaskManager que permita agregar, eliminar y listar tareas. 
Escribe pruebas unitarias para verificar que el gestor de tareas realiza las operaciones correctamente, 
como agregar una tarea, eliminar una tarea existente y listar las tareas disponibles.

 */
package Ej4GestorDeTareas;

import Ej4GestorDeTareas.entidad.Tarea;
import java.util.ArrayList;

public class TaskManager {

    // Atributo estático para que permanezca entre distintas instancias de TaskManager.
    private static ArrayList<Tarea> tareas = new ArrayList<>();

    public void agregarTarea(Tarea t) {
        tareas.add(t);
    }
    
    public void eliminarTarea(int num) {
        // to-do:
        // verificar que exista una tarea en tareas(num)
        tareas.remove(num);
    }
    
    public void mostrarTareas() {
        for (Tarea t: tareas) {
            System.out.println(t);
        }
    }
    
}
