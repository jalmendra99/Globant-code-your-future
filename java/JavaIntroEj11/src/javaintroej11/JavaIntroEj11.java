/*
Java Intro - Ejercicio 11 - Strings.
Fer V - Jalmendra99@gmail.com

EJERCICIO 11
Escribir un programa que procese una secuencia de caracteres ingresada 
por teclado y terminada en punto, y luego codifique la palabra o 
frase ingresada de la siguiente manera: 
cada vocal se reemplaza por el carácter que se indica en la tabla 
y el resto de los caracteres (incluyendo a las vocales acentuadas) 
se mantienen sin cambios.
a -> @
e -> #
i -> $
o -> %
u -> *
Realice un subprograma que reciba una secuencia de caracteres 
y retorne la codificación correspondiente. 
Utilice la estructura “según” para la transformación.
Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.

---

Fer: Notas sacadas de "Java Intro.pdf", páginas 38 y 39:

concat(String str)      <-- Concatena
length()                <-- Largo de cadena.
substring(int beginIndex, int endIndex)     <-- Retorna sub cadena.

 */
package javaintroej11;

import java.util.Scanner;

public class JavaIntroEj11 {

    public static void main(String[] args) {

        // Definición de variables.
        String frase = "";
        String frase2 = "";
        String caracterActual = "";
        int posicion;

        Scanner leer = new Scanner(System.in);

        // Se informa la premisa al usuario.
        System.out.print("Ingresará una frase, caracter por caracter. ");
        System.out.print("La misma se tomará hasta el primer punto ingresado ");
        System.out.print("y se ignorará el resto de la misma.");
        System.out.println("");
        System.out.print("Ingrese la frase: ");
        frase = leer.nextLine();

        // Se asegura de que la frase ingresada no esté vacía.
        if (frase.length() > 0) {
            // Se toma el primer caracter de la frase.
            caracterActual = frase.substring(0, 1);
        }

        posicion = 0;

        // Compara el caracter actual con ".".
        // .compareTo devuelve 0 si las cadenas son iguales.
        // .length() devuelve el largo de una cadena.
        while ((caracterActual.compareTo(".") != 0) && (posicion < (frase.length() - 1))) {

            switch (caracterActual) {
                case "a": // a -> @
                    frase2 = frase2.concat("@");
                    break;
                case "e": // e -> #
                    frase2 = frase2.concat("#");
                    break;
                case "i": // i -> $
                    frase2 = frase2.concat("$");
                    break;
                case "o": // o -> %
                    frase2 = frase2.concat("%");
                    break;
                case "u": // u -> *
                    frase2 = frase2.concat("*");
                    break;
                default:
                    // Cualquier otra letra queda igual en frase2, que en frase.
                    frase2 = frase2.concat(caracterActual);
            }

            // Se suma 1a posición para poder continuar con el siguiente caracter.
            posicion++;

            // Se toma el siguiente caracter de la frase.
            // menos el último
            caracterActual = frase.substring(posicion, posicion + 1);

        }

        // se agrega el último caracter a la frase2.
        frase2 = frase2.concat(caracterActual);

        // Se muestra la cadena reformada por pantalla.
        System.out.println("La nueva frase es: " + frase2);

    }

}
