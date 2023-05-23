/*
Java - Ejercicios de aprendizaje
Ejercicio 12 - Página 43
Substring. Length. Equals.

Fer V - Jalmendra99@gmail.com

Realizar un programa que simule el funcionamiento de un dispositivo RS232, 
este tipo de dispositivo lee cadenas enviadas por el usuario. 
Las cadenas deben llegar con un formato fijo: 
tienen que ser de un máximo de 5 caracteres de largo, 
el primer carácter tiene que ser X y el último tiene que ser una O.
Las secuencias leídas que respeten el formato se consideran correctas, 
la secuencia especial “&&&&&” marca el final de los envíos (llamémosla FDE), 
y toda secuencia distinta de FDE, que no respete el formato 
se considera incorrecta.
Al finalizar el proceso, se imprime un informe indicando la cantidad 
de lecturas correctas e incorrectas recibidas. 
Para resolver el ejercicio deberá investigar cómo se utilizan 
las siguientes funciones de Java Substring(), Length(), equals().

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej12SubstringLengthEquals {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        String cadena;
        int correctas, incorrectas;
        boolean primeraLetraEsX, ultimaLetraEsO;

        // Se informa la premisa al usuario.
        System.out.print("Se pedirá al usuario ingresar varias cadenas ");
        System.out.print("de texto y se verificará si el formato de las ");
        System.out.print("mismas respetan el formato considerado <correcto>: ");
        System.out.print("tienen que ser de un máximo de 5 caracteres de largo, ");
        System.out.print("el primer carácter tiene que ser X y el último tiene ");
        System.out.print("que ser una O.\n");
        System.out.println("el proceso finalizará con una cadena FDE (&&&&&).");

        correctas = 0;
        incorrectas = 0;

        do {
            // Se ingresa la cadena.
            System.out.print("Ingrese una cadena (hint: X___O / &&&&&): ");
            cadena = leer.nextLine();

            // Si el largo de la cadena no es igual a 5, se cuenta como 
            // una entrada incorrecta.
            if (cadena.length() != 5) {                
                incorrectas++;
            } else { // Si la cadena es de largo 5..
                
                // Se extrae la primera letra de la cadena (en mayúsculas) 
                // y se comprara con X.
                primeraLetraEsX = cadena.toUpperCase().subSequence(0, 1).equals("X");
                
                // Se extrae le quinta letra de la cadena (en mayúsculas)
                // y se compara con O.
                ultimaLetraEsO = cadena.toUpperCase().subSequence(4, 5).equals("O");

                if (cadena.equals("&&&&&")) {
                    // Se sale del bucle sin contarse como correcta ni incorrecta.
                } else if (primeraLetraEsX && ultimaLetraEsO) {
                    // La cadena actual se cuenta como correcta.
                    correctas++;
                } else {
                    incorrectas++;
                }

            }

        } while (!cadena.equals("&&&&&"));

        // La información solicitada se muestra por pantalla.
        System.out.println("Cadenas correctas: " + correctas + ".");
        System.out.println("Cadenas INcorrectas: " + incorrectas + ".");

    }
}
