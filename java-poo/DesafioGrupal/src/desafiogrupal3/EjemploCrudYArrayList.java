/*
Java-POO - Desafío grupal 3.

Fer V - Jalmendra99@gmail.com

Info: 
https://www.w3schools.com/java/java_arraylist.asp

 */
package desafiogrupal3;

import java.util.ArrayList;
import java.util.List;

public class EjemploCrudYArrayList {

    public static void main(String[] args) {
        
        // 1. Que es CRUD?
        // CRUD significa: Create, Read, Update, Delete (crear, leer, actualizar, eliminar).
        
        // 2. Declaración y creación de una ArrayList.
        List <String> lista = new ArrayList <> ();
        
        // 3. Operaciones CRUD:
        
        // Create (crear)
        lista.add("primero");
        lista.add("segundo");
        lista.add("tercero");
        lista.add("cuarto");

        // Read (leer)
        System.out.println("Imprimiendo lista(0)");
        System.out.println(lista.get(0));
        
        // Update (actualizar)
        System.out.println("Modificando lista(0)");
        lista.set(0, "nuevo primero");
        
        System.out.println("Imprimiendo lista(0)");
        System.out.println(lista.get(0));
        
        // Delete (eliminar)
        System.out.println("Removiendo lista(0)");
        lista.remove(0);
        
        System.out.println("Imprimiendo lista(0)");
        System.out.println(lista.get(0));       
        
        System.out.println("Insertando nuevo elemento cero");
        lista.add(0, "nuevo primero");
        System.out.println(lista.get(0));
        System.out.println(lista.get(1));

    }

}