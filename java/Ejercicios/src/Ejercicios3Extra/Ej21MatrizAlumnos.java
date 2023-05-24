/*
Java - Ejercicios extra
Ejercicio 21 - Página 48
Llenar un vector con notas de 10 alumnos, calcular promedio de c/u y mostrar.

Fer V - Jalmendra99@gmail.com

Los profesores del curso de programación de Egg necesitan 
llevar un registro de las notas adquiridas por sus 10 alumnos 
para luego obtener una cantidad de aprobados y desaprobados. 
Durante el periodo de cursado cada alumno obtiene 4 notas, 
2 por trabajos prácticos evaluativos y 2 por parciales. 
Las ponderaciones de cada nota son:

* Primer trabajo práctico evaluativo 10% 
* Segundo trabajo práctico evaluativo 15% 
* Primer Integrador 25% 
* Segundo integrador 50%
Una vez cargadas las notas, se calcula el promedio 
y se guarda en el arreglo. 
Al final del programa los profesores necesitan obtener por pantalla 
la cantidad de aprobados y desaprobados, 
teniendo en cuenta que solo aprueban los alumnos con promedio 
mayor o igual al 7 de sus notas del curso.


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en el paquete EjerciciosDeAprendizaje.
por lo que para llamar a los mismos se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios3Extra;

import Ejercicios2DeAprendizaje.LibFerArrays;
import java.util.Scanner;

public class Ej21MatrizAlumnos {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int tamanio, aprobados, reprobados;
        int[][] notas = new int[10][4];    // Las filas representan los 10 alumnos.
        float[] promedios = new float[10];
        float notaFinal;

        // Las columnas son las 4 notas y el promedio.
        // Se informa la premisa al usuario.
        System.out.print("Se generará una matriz de float de tamaño 10 x 4 ");
        System.out.print("que contendrá para 10 alumnos, sus 4 notas. Luego se ");
        System.out.println("calculará el promedio de las mismas por alumno automáticamente.");
        System.out.println("Finalmente se mostrará la cantidad de aprobados y desaprobados.");

        // Se llena el vector con números enteros elegidos al azar,
        // entre 4 y 10 inclusive, para las primeras 4 columnas de cada fila de la matriz
        // reservando la última columna para guardar los promedios de cada 
        LibFerArrays.llenaMatrizEnterosAzar(notas, 10, 4, 4, 10);

        // Se calculan y guardan los promedios para cada alumno.
        for (int fila = 0; fila < 10; fila++) {
            notaFinal = 0;
            for (int columna = 0; columna < 4; columna++) {
                switch (columna) {
                    case 0:
                        notaFinal += (notas[fila][columna] * 0.1);                        
                        break;
                    case 1:
                        notaFinal += (notas[fila][columna] * 0.15);
                        break;
                    case 2:
                        notaFinal += (notas[fila][columna] * 0.25);
                        break;
                    case 3:
                        notaFinal += (notas[fila][columna] * 0.5);
                        break;
                    default:
                        System.out.println("Hubo un error al calcular los promedios.");
                }
            }
            // Se guarda el promedio de cada fila (alumno) en la última columna
            // de la matriz de notas.            
            promedios[fila] = notaFinal;
        }

        // Se recorre toda la matriz para contar las personas con promedio 
        // mayor o igual a 7 (aprobados) y los demás (desaprobados).
        aprobados = 0;
        reprobados = 0;
        for (int alumno = 0; alumno < 10; alumno++) {

            // Se revisa, en todas las filas de la matriz de notas,
            // solo la columna 4 que corresponde a los promedios.
            if (promedios[alumno] >= 7) {
                aprobados++;
            } else {
                reprobados++;
            }
        }

        // Se muestra en pantalla la información solicitada.
        System.out.println("\nLa cantidad de aprobados es " + aprobados + ".");
        System.out.println("La cantidad de reprobados es " + reprobados + ".");

        // Se imprime por pantalla la matriz con las notas para verificar visualmente.
        System.out.println("\nLa matriz de notas es:");
        LibFerArrays.imprimeMatrizEnteros(notas, 10, 4);

        // Se imprime por pantalla el vector con los promedios para verificar visualmente.
        System.out.println("\nEl vector de promedios es:");
        LibFerArrays.imprimeVectorFloat(promedios, 10);

    }

}
