/*
Java - colecciones - Ejercicios.
Ejercicio 2 - Página 8

Fer V - Jalmendra99@gmail.com

EJERCICIO COLECCIONES 
Toma la Lista, el Conjunto y el Mapa del ejemplo y agrega 5 objetos a cada uno.

 */
package pkg1ejerciciosteoria;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class Ej2Colecciones {

    public static void main(String[] args) {

        // Listas:
        ArrayList<Integer> numerosA = new ArrayList();
        
        for (int i = 0; i < 5; i++) {
            numerosA.add(i);
            System.out.println(numerosA.get(i));
        }
        
        // Conjuntos: (no tienen índice, así que solo se puede mostrar y borrar por elemento)
        HashSet<Integer> numerosB = new HashSet();
        
        for (int i = 0; i < 5; i++) {
            numerosB.add(i);
        }
        
        for (Integer num : numerosB) {
            System.out.println(num);
        }
        
        // Mapas:
        HashMap<Integer, String> alumnos = new HashMap();
        
        for (int i = 0; i < 5; i++) {
            alumnos.put(i, "alumno nro " + i);
            System.out.println(alumnos.get(i));
        }
        
    }

}
