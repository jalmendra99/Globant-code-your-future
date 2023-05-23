/*
Java Intro - Ejercicio 2 - Asignación de valores a variables.
Fer V - Jalmendra99@gmail.com

EJERCICIO 2 

¿Recuerdas las variables que creaste en el ejercicio anterior? 
Ahora deberás asignarles un valor.

DETECCIÓN DE ERRORES
public static void main(String[] args) { 
    int numero = "48"; 
    double decimales = 3,55; 
    bolean bandera -> "false";
    }
}

 */
package Ejercicios1JavaIntro;

public class JavaIntroEj02 {

    public static void main(String[] args) {

        // Declaración de variables.
        int numero = 48;
        long largo;
        double decimales = 3.55;
        float flotante;
        double dobleFlotante;
        boolean bandera = false;
        char caracter;
        String nombre;

        // Inicialización de variables.        
        largo = 60000;
        // flotante = 0.2; // ¿Cuál es el problema acá?
        dobleFlotante = 10.3;
        caracter = 'a';  // o también indicando su valor Unicode, por ejemplo '\u0061'.
        nombre = "José Perez";

    }
}
