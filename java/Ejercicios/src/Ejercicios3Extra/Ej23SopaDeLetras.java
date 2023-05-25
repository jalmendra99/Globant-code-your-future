/*
Java - Ejercicios extra
Ejercicio 23 - Página 50
Sopa de letras.

Fer V - Jalmendra99@gmail.com

Construya un programa que lea 5 palabras de mínimo 3 y hasta 5 caracteres 
y, a medida que el usuario las va ingresando, 
construya una “sopa de letras para niños” de tamaño de 20 x 20 caracteres. 
Las palabras se ubicarán todas en orden horizontal 
en una fila que será seleccionada de manera aleatoria. 
Una vez concluida la ubicación de las palabras, 
rellene los espacios no utilizados con un número aleatorio del 0 al 9. 
Finalmente imprima por pantalla la sopa de letras creada.
Nota: Para resolver el ejercicio deberá investigar cómo se utilizan 
las siguientes funciones de Java substring(), Length() y Math.random().


Info:
Convert int to char in java use: Integer.toString(NUMEROENTERO).charAt(0);
https://stackoverflow.com/questions/17984975/convert-int-to-char-in-java

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej23SopaDeLetras {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        String palabra;
        int filaAleatoria, columnaAleatoria, numeroAleatorio;
        int col;
        boolean agregar;
        char[][] sopaDeLetras = new char[20][20];

        // Se inicializa la matriz de caracteres con el caracter '0'.
        for (int fila = 0; fila < 20; fila++) {
            for (int columna = 0; columna < 20; columna++) {
                sopaDeLetras[fila][columna] = '0';
            }
        }

        // Se informa la premisa al usuario.
        System.out.print("Ingresará 5 palabras de entre 3 y 5 caracteres ");
        System.out.print("y se construirá una sopa de letras de 20 x 20 caracteres con las mismas.\n");

        // Se ingresan las 5 palabras
        for (int j = 0; j < 5; j++) {

            do {
                System.out.print("Ingrese una palabra de entre 3 y 5 caracteres (restan " + (5 - j) + "): ");
                palabra = leer.next();
            } while (palabra.length() < 3 || palabra.length() > 5);

            do {
                agregar = false;

                // Se genera un número aleatorio de fila (entre 0 y 19 inclusive).
                filaAleatoria = (int) (Math.random() * 20);

                // Si la fila elegida al azar está vacía, se activa la señal
                // para salir de este do..while y poder agregar la palabra
                // a el vector sopaDeLetras.
                if (sopaDeLetras[filaAleatoria][0] == '0') {
                    agregar = true;
                }

            } while (agregar == false);
                       
            // Se elige un número aleatorio entre 0 y <20-largo de palabra>
            // para elegr la columna donde comenzará a escribirse la palabra
            columnaAleatoria = (int) (Math.random() * (20 - palabra.length()));
            
            // Se agregan números aleatorios entre el comienzo de la fila
            // actual de la matriz (columna 0) y el número aleatorio de columna
            for (int i = 0; i < columnaAleatoria; i++) {
                // Se genera un número aleatorio de relleno (entre 0 y 9 inclusive).
                numeroAleatorio = (int) (Math.random() * 10);
                sopaDeLetras[filaAleatoria][i] = Integer.toString(numeroAleatorio).charAt(0);
            }
            
            // Se agrega la palabra al vector sopaDeLetras en una fila aleatoria.
            col = 0;
            for (int i = columnaAleatoria; i < (columnaAleatoria + palabra.length()); i++) {
                sopaDeLetras[filaAleatoria][i] = palabra.charAt(col);
                col++;
            }

            // Se agregan números aleatorios entre el final de la palabra y
            // el final de la fila actual de la matriz .
            for (int i = (columnaAleatoria + palabra.length()); i < 20; i++) {
                // Se genera un número aleatorio de relleno (entre 0 y 9 inclusive).
                numeroAleatorio = (int) (Math.random() * 10);
                sopaDeLetras[filaAleatoria][i] = Integer.toString(numeroAleatorio).charAt(0);
            }

        }

        // Las filas restantes (las que siguen rellenas
        // con '0') se rellenan con números aleatorios entre 0 y 9.
        for (int fila = 0; fila < 20; fila++) {

            // Si la fila comienza con un '0', entonces está "vacía".
            if (sopaDeLetras[fila][0] == '0') {

                // Se llenan todas las columnas de la fila actual con números aleatorios.
                for (int columna = 0; columna < 20; columna++) {

                    // Se genera un número aleatorio de relleno (entre 0 y 9 inclusive).
                    numeroAleatorio = (int) (Math.random() * 10);
                    sopaDeLetras[fila][columna] = Integer.toString(numeroAleatorio).charAt(0);
                }

            }
        }

        // Se muestra la matriz sopaDeLetras por pantalla.
        System.out.println("La sopa de letras generada es:");
        for (int fila = 0; fila < 20; fila++) {
            for (int columna = 0; columna < 20; columna++) {

                // Se imprime el caracter de la posición actual de la matriz.
                System.out.print(sopaDeLetras[fila][columna]);

                // después del caracter de la última columna de cada fila
                // no hace falta imprimir un espacio.
                if (columna != (20 - 1)) {
                    System.out.print(" ");
                }
            }
            // Imprime un salto de lńea para pasar a mostrar la siguiente fila.
            System.out.println("");
        }
    }
}
