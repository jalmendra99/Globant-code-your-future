/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 4 - Página 10

Fer V - Jalmendra99@gmail.com

4. Gestor de Tareas:
Crea una clase TaskManager que permita agregar, eliminar y listar tareas. 
Escribe pruebas unitarias para verificar que el gestor de tareas realiza 
las operaciones correctamente, como agregar una tarea, eliminar una tarea existente 
y listar las tareas disponibles.

 */
package Ej4GestorDeTareas;

import Ej4GestorDeTareas.entidad.Tarea;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class TaskManagerTest {

    public TaskManagerTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of agregarTarea method, of class TaskManager.
     */
    @Test
    public void testAgregarTarea() {
        System.out.println("agregarTarea");
        Tarea t1 = new Tarea("agregada 1");
        TaskManager instance = new TaskManager();
        instance.agregarTarea(t1);

        Tarea t2 = new Tarea("agregada 2");
        instance.agregarTarea(t2);

//        instance.mostrarTareas();
    }

    /**
     * Test of eliminarTarea method, of class TaskManager.
     */
    @Test
    public void testEliminarTarea() {
        System.out.println("eliminarTarea");
        int num = 0;
        TaskManager instance = new TaskManager();
        instance.eliminarTarea(num);
    }

    /**
     * Test of mostrarTareas method, of class TaskManager.
     */
    @Test
    public void testMostrarTareas() {
        System.out.println("mostrarTareas");
        TaskManager instance = new TaskManager();
        instance.mostrarTareas();
    }

}
