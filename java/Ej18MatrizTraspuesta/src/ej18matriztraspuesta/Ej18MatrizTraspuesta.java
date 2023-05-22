/*
Java - Ejercicios de aprendizaje
Ejercicio 18 - Página 44
Matriz traspuesta.

Fer V - Jalmendra99@gmail.com

Realizar un programa que rellene un matriz de 4 x 4 de valores aleatorios 
y muestre la traspuesta de la matriz. 
La matriz traspuesta de una matriz A se denota por B y se obtiene 
cambiando sus filas por columnas (o viceversa).

A = 1  0  4      B = 1  0  6
    0  5  0          0  5  0
    6  0 -9          4  0 -9


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
package ej18matriztraspuesta;

import libferarrays.LibFerArrays;

public class Ej18MatrizTraspuesta {

    public static void main(String[] args) {

        // Definición de variables.
        int[][] matriz = new int[4][4];
        int[][] traspuesta = new int[4][4];

        // Se informa la premisa al usuario.
        System.out.print("Se creará una matriz de 4x4 y se llenará de ");
        System.out.println("números enteros al azar (entre 1 y 5 dígitos).");
        System.out.println("Luego se calculará y mostrará la matriz traspuesta.");

        // Se llena la matriz A con números al azar entre 0 y 99999.
        for (int fila = 0; fila < 4 ; fila++) {
            for (int columna = 0; columna < 4 ; columna++) {
//                matriz[fila][columna] = (int) ((Math.random() * 100000) - 0);
                matriz[fila][columna] = LibFerArrays.AzarPorCantDigitos(1, 5);
            }
        }

        // Se muestra la matriz A por pantalla.
        System.out.println("");
        System.out.println("Matriz A:");
        LibFerArrays.imprimeMatrizEnteros(matriz, 4, 4);

        // Se llena la matriz B con los valores de A traspuesta.
        for (int fila = 0; fila < 4 ; fila++) {
            for (int columna = 0; columna < 4 ; columna++) {
                traspuesta[fila][columna] = matriz[columna][fila];
            }
        }

        // Se muestra la matriz traspuesta B por pantalla.
        System.out.println("");
        System.out.println("Matriz B (Traspuesta de A):");
        LibFerArrays.imprimeMatrizEnteros(traspuesta, 4, 4);

    }

}
