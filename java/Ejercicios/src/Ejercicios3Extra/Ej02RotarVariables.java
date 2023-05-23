/*
Java - Ejercicios extra
Ejercicio 2 - Página 46
Rotar variables usando una extra como buffer.

Fer V - Jalmendra99@gmail.com

Declarar cuatro variables de tipo entero A, B, C y D
y asignarle un valor diferente a cada una.
A continuación, realizar las instrucciones necesarias para que:
B tome el valor de C,
C tome el valor de A,
A tome el valor de D y
D tome el valor de B.
Mostrar los valores iniciales y los valores finales de cada variable.
Utilizar sólo una variable auxiliar.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej02RotarVariables {
    
    public static void main(String[] args) {
        
        Scanner leer = new Scanner(System.in);
        
        int A, B, C, D, AUX;
        
        A = 1;
        B = 2;
        C = 3;
        D = 4;
        
        System.out.println("A = " + A + ", B = " + B + ", C = " + C + ", D = " + D);
        
        AUX = B;
        B = C;
        C = A;
        A = D;
        D = AUX;
        
        System.out.println("A = " + A + ", B = " + B + ", C = " + C + ", D = " + D);        
        
    }
}