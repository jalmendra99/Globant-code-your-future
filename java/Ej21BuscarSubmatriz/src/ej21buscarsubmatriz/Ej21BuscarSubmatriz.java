/*
Java - Ejercicios de aprendizaje
Ejercicio 21 - Página 45
Buscar una submatriz dentro de una matriz más grande.

Fer V - Jalmendra99@gmail.com

Dadas dos matrices cuadradas de números enteros, 
la matriz M de 10x10 y la matriz P de 3x3, 
se solicita escribir un programa en el cual se compruebe 
si la matriz P está contenida dentro de la matriz M. 
Para ello se debe verificar si entre todas las submatrices de 3x3 
que se pueden formar en la matriz M, desplazándose por filas o columnas, 
existe al menos una que coincida con la matriz P. 
En ese caso, el programa debe indicar la fila y la columna de la matriz M 
en la cual empieza el primer elemento de la submatriz P.
Ejemplo:

Matriz M (10x10)                   Matriz P (3x3)
 1 26 36 47  5  6 72 81 95 10      36  5 67
11 12 13 21 41 22 67 20 10 61      89 90 75
56 78 87 90 09 90 17 12 87 67      14 22 26
41 87 24 56 97 74 87 42 64 35
32 76 79  1[36| 5|67]96 12 11
99 13 54 88[89|90|75]12 41 76
67 78 87 45[14|22|26]42 56 78
98 45 34 23 32 56 74 16 19 18
24 67 97 46 87 13 67 89 93 24
21 68 78 98 90 67 12 41 65 12

Como podemos observar nuestra submatriz P se encuentra en la matriz M 
en los índices: 4,4 - 4,5 - 4,6 - 5,4 - 5,5 - 5,6 - 6,4 - 6,5 - 6,6.


-------------------------------------------------------------------------
Este fuente usa código del paquete.clase libferarrays.LibFerArrays
Para importarlo en este proyecto con NetBeans:
- ir a "projects".
- Seleccionar y expandír el proyecto actual.
- Seleccionar y expandír "librerías" o "libraries".
- click derecho allí y seleccionar "agregar JAR/carpeta" o "Add Jar/folder".
- buscar el directorio / carpeta "LibFerArrays" -> "dist".
- y dentro del mismo seleccionar el archivo "LibFerArrays.jar".
- Finalmente agregar al código del paquete del proyecto actual la línea:
    import libferarrays.LibFerArrays;
- Para utilizar cualquiera de las funciones de libferarrays:
    escribir LibFerArrays. y presionar <CTRL> + <BARRA ESPACIADORA>

Nota:
- Si en algún momento se realizan cambios al proyecto LibFerArrays.
- hay que guardarlos a mano o compilarlo a mano yendo al menú "Ejecutar" o "Run".
- y eligiendo la opción "Construír proyecto" o "Build proyect".

Fuentes: https://www.youtube.com/watch?v=3oOmd9R1LMQ
-------------------------------------------------------------------------

 */
package ej21buscarsubmatriz;

import java.util.Scanner;
import libferarrays.LibFerArrays;

public class Ej21BuscarSubmatriz {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int[][] matriz = new int[10][10];
        int[][] submatriz = new int[3][3];

        // coordenadas[0] contendrá el número de fila 
        // donde comienza la submatriz, si se encuentra en la matriz principal.
        // Y coordenadas[1] contendrá el número de columna.
        int[] coordenadas = new int[2];

        // Se inicializa con coordenadas inválidas.
        coordenadas[0] = -1;
        coordenadas[1] = -1;

        int num;  // para validar el número ingresado por el usuario.

        // Se informa la premisa al usuario.
        System.out.print("Se creará una matriz de 10x10 y se llenará con números ");
        System.out.println("elegidos al azar (entre 0 y 99).");
        System.out.print("Luego se mostrará la misma por pantalla y se pedirá ");
        System.out.print("al usuario que ingrese una matriz de tamaño 3x3 para que sea ");
        System.out.println("buscada dentro de la matriz principal.");
        System.out.print("El programa determinará si la matríz de 3x3 está contenida ");
        System.out.print("dentro de la matriz principal de 10x10 y de ser así ");
        System.out.println("se mostrará el número de fila y columna donde la submatriz empieza.");

        // Se llena la matriz principal con números al azar entre 0 y 99.
        for (int fila = 0; fila < 10; fila++) {
            for (int columna = 0; columna < 10; columna++) {
                matriz[fila][columna] = (int) (Math.random() * 100);
            }
        }

        // Se muestra por pantalla la matriz principal para validar visualmente.
        System.out.println("");
        System.out.println("La matriz principal, generada con números al azar, es:");
        LibFerArrays.imprimeMatrizEnteros(matriz, 10, 10);

        System.out.println("");
        System.out.println("Ahora ingresará valores para llenar una matriz de 3x3:");

        // Se llena la submatriz P con números ingresados por el usuario.
        for (int fila = 0; fila < 3; fila++) {
            for (int columna = 0; columna < 3; columna++) {
                // Se fuerza a que todos los valores de la submatriz estén entre 0 y 99.
                do {
                    System.out.print("Ingrese un valor para matriz[" + fila + "][" + columna + "]: ");
                    num = leer.nextInt();

                    if (num < 0 || num > 99) {
                        System.out.println("El valor ingresado debe estar entre 0 y 99");
                    } else {
                        submatriz[fila][columna] = num;
                    }

                } while (num < 0 || num > 99);

            }
        }

        // Se muestra la submatriz ingresada, para referencia:
        System.out.println("");
        System.out.println("La submatriz ingresada es:");
        LibFerArrays.imprimeMatrizEnteros(submatriz, 3, 3);

        // Se busca la submatriz dentro de la matriz, y si se encuentra,
        // las coordenadas quedarán grabadas en "coordenadas[0]" para el 
        // número de la fila donde la submatriz comienza dentro de la matriz, y
        // "coordenadas[1]" para el número de columna. 
        submatrizEnMatriz(matriz, 10, 10, submatriz, 3, 3, coordenadas);

        System.out.println("");
        if (coordenadas[0] != -1) {
            System.out.println("La submatriz ingresada se encontró en la posición:");
            System.out.println("fila: " + coordenadas[0] + ", columna: " + coordenadas[1] + ".");
        } else {
            System.out.println("La submatriz ingresada NO se encontró en la matriz principal.");
        }

    }

    // Funcion submatrizEnMatriz
    // Buscar una "submatriz" de tamaño "o"x"p" dentro de una
    // "matriz" principal de tamaño "m"x"n".
    // Condiciones: o <= m y p <= n (o sea, la submatriz puede ser 
    // del mismo tamaño o de menor tamaño que la matriz).
    // No retorna valores, pero si encuentra a la submatriz dentro de la matriz,
    // dejará las "coordenadas" guardadas donde la misma comienza.
    // coordenadas[0] = el número de la fila donde la submatriz comienza en la matriz.
    // coordenadas[1] = el número de la columna.
    public static void submatrizEnMatriz(
            int[][] matriz, int m, int n,
            int[][] submatriz, int o, int p,
            int[] coordenadas) {

        // Se recorren todas las posiciones de la matriz en búsqueda
        // de que coincida el valor de la posición actual, con el primer (0,0)
        // valor de la submatriz.
        // Solo se recorre la matriz principal hasta su cantidad máxima
        // de filas, menos la cantidad de filas de la submatriz, y lo mismo
        // para las columnas, ya que buscár más allá de esos límites no serviría
        // porque la submatriz ya no entraría en esas últimas posiciones.
        ////////// EXPLICAR MEJOR POR SI NO QUEDA CLARO ////////////
        for (int fila = 0; fila < m - (o - 1); fila++) {
            for (int columna = 0; columna < n - (p - 1); columna++) {
                if (matriz[fila][columna] == submatriz[0][0]) {
                    
                    // Se guardan las coordenadas..
                    coordenadas[0] = fila;
                    coordenadas[1] = columna;

                    // Se recorre toda la submatriz y se vá comparando
                    // cada valor con la matriz.
                    // Si cualquiera de los 9 valores es diferente
                    // entonces se dejan las comparaciones y se vuelve
                    // a los loops que recorren la matriz principal
                    // para continuar buscando
                    for (int filaSub = 0; filaSub < o; filaSub++) {
                        for (int columnaSub = 0; columnaSub < p; columnaSub++) {
                            if (matriz[fila + filaSub][columna + columnaSub] != submatriz[filaSub][columnaSub]) {
                                coordenadas[0] = -1;
                                coordenadas[1] = -1;
                                // Se sale del for de columnaSub.
                                break;
                            }
                        }
                        // Si se encontró alguna diferencia, se sale del for de filaSub también.
                        if (coordenadas[0] == -1) {
                            break;
                        }
                    }
                }
            }
        }

    }

}
