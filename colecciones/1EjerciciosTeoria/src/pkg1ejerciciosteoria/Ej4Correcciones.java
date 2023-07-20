/*
Java - colecciones - Ejercicios.
Ejercicio 4 - Página 11

Fer V - Jalmendra99@gmail.com

MANOS A LA OBRA – DETECCIÓN DE ERRORES 
HashMap<Integer> personas = new HashMap<>;
String n1 = “Albus”;
String n2 = “Severus”;
personas.add(n1);
personas.add(n2);

 */
package pkg1ejerciciosteoria;

import java.util.HashMap;

public class Ej4Correcciones {

    public static void main(String[] args) {

        HashMap<Integer, String> personas = new HashMap<>();
        String n1 = "Albus";
        String n2 = "Severus";
        personas.put(1, n1);
        personas.put(2, n2);
        
    }

}
