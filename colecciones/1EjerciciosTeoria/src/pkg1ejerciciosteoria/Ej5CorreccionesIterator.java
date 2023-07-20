/*
Java - colecciones - Ejercicios.
Ejercicio 5 - Página 12

Fer V - Jalmendra99@gmail.com

MANOS A LA OBRA - DETECCIÓN DE ERRORES 
ArrayList<String> = new ArrayList()
bebidas.put(“café);
bebidas.add(“té”);
Iterator<String> it =bebidas.iterator();
whale (it.next()){
if (it.next().equals(“café”)){
it.remove();
}

 */
package pkg1ejerciciosteoria;

import java.util.ArrayList;
import java.util.Iterator;

public class Ej5CorreccionesIterator {

    public static void main(String[] args) {

        ArrayList<String> bebidas = new ArrayList();
        
        bebidas.add("café");
        bebidas.add("té");
        
        Iterator<String> it = bebidas.iterator();

        while (it.hasNext()) {
            if (it.next().equals("café")) {
                it.remove();
            }
        }

    }

}