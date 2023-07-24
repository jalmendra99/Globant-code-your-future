/*
Java - colecciones - Ejercicios.
Ejercicio 3 - Página 9

Fer V - Jalmendra99@gmail.com

MANOS A LA OBRA!
Toma la Lista, el Conjunto y el Mapa que hiciste previamente 
y elimina en cada uno un objeto de cada forma que aprendiste arriba.

 */
package pkg1ejerciciosteoria;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class Ej3EliminarElementos {

    public static void main(String[] args) {

        // Listas:
        ArrayList<Integer> numerosA = new ArrayList();
        
        for (int i = 0; i < 5; i++) {
            numerosA.add(i);
        }
        
        // Eliminando un elemento de la lista por índice
        numerosA.remove(0);
        
        // Eliminando un elemento de la lista por elemento
        Integer z = 3;
        numerosA.remove(z);
        
        // Muestra los elementos de la lista numerosA
        System.out.println("Mostrando la lista después de haber borrado el item de la posición 0");
        System.out.println("y el elemento que contenía el número 3.");
        for (int i = 0; i < numerosA.size(); i++) {
            System.out.println(numerosA.get(i));
        }
        
        
        // Conjuntos: (no tienen índice, así que solo se puede mostrar y borrar por elemento)
        HashSet<Integer> numerosB = new HashSet();
        
        // Se agregan 5 elementos.
        for (int i = 0; i < 5; i++) {
            numerosB.add(i);
        }
        
        // Eliminando un elemento del conjunto por elemento.
        Integer y = 2;
        numerosB.remove(y);
        
        // Muestra los elementos del conjunto numerosB
        System.out.println("Mostrando el conjunto después de haber borrado el elemento 2.");
        for (Integer num : numerosB) {
            System.out.println(num);
        }
        
        
        // Mapas:
        HashMap<Integer, String> alumnos = new HashMap();
        
        // Se agregan 5 elementos.
        for (int i = 0; i < 5; i++) {
            alumnos.put(i, "alumno nro " + i);
        }

        // Elimina un elemento del mapa por llave.
        Integer llave = 4;
        alumnos.remove(llave);
        
        // Muestra los elementos del mapa alumnos.
        System.out.println("Mostrando el mapa después de haber borrado el de llave = 4.");
        for (int i = 0; i < alumnos.size(); i++) {
            System.out.println(alumnos.get(i));
        }
        
    }
    
}