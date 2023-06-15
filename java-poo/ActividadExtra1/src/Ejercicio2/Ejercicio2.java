/*
Java-POO - Actividad extra 1.
Ejercicio 2 - Página 3

Se está realizando una calculadora grafica, y se requiere calcular algunas áreas y perímetros 
de unas figuras geométricas. Las figuras son las siguientes: 
Cuadrado Rectángulo Triangulo Circulo Hexágono Pentágono Rombo 
El usuario debe elegir la figura geométrica, luego debe ingresar el/los dato/s 
de la figura geométrica elegida y le debe mostrar por pantalla el área y el perímetro.
Aclaración: Si el usuario elige una figura, se debe crear un objeto de esa figura seleccionada, 
y realizar los cálculos para luego mostrar en pantalla.


Fer V - Jalmendra99@gmail.com

--
Info: 
https://www.omnicalculator.com/math/area
https://www.omnicalculator.com/math/perimeter
https://www.wikihow.com/Calculate-the-Area-of-a-Hexagon
https://es.wikihow.com/calcular-la-apotema-de-un-hex%C3%A1gono
https://tutors.com/lesson/how-to-find-the-area-of-a-pentagon
https://stackoverflow.com/questions/24766572/java-is-outputting-the-wrong-value-for-a-math-tan-calculation
https://www.wikihow.com/Calculate-the-Area-of-a-Rhombus

 */
package Ejercicio2;

import java.util.Scanner;

public class Ejercicio2 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Pide al usuario elegír la figura.
        int opcion;
        boolean mostrarMenu = true;
        double lado1, lado2, radio, angulo;

        // Los subíndices de figura coinciden con los números del menú.
        // Ej: La opción 1 del menú es "cuadrado" y figura[1] = "cuadrado"
        //     La opción 2 del menú es "rectángulo" y figura[2] = "rectángulo",... etc.
        String[] figura = new String[]{"<NADA>", "cuadrado", "rectángulo", "triangulo", "circulo", "hexágono", "pentágono", "rombo"};

        while (mostrarMenu) {
            System.out.println("Cálculo de área y perímetro de figuras geométricas. Opciones:");
            System.out.println("1. Cuadrado");
            System.out.println("2. Rectángulo");
            System.out.println("3. Triangulo");
            System.out.println("4. Circulo");
            System.out.println("5. Hexágono");
            System.out.println("6. Pentágono");
            System.out.println("7. Rombo");
            System.out.println("8. Salir");
            System.out.println("Seleccione una figura (1-7): ");
            opcion = leer.nextInt();

            double area = 0;
            double perimetro = 0;
            if (opcion < 1 || opcion > 8) {
                System.out.println("Opción incorrecta. Ingrese una opción entre 1 y 8.");
            } else {
                switch (opcion) {
                    case 1: // Cuadrado
                        System.out.print("Ingrese el tamaño del lado en cm: ");
                        lado1 = leer.nextDouble();
                        Cuadrado cu = new Cuadrado(lado1);
                        area = cu.area();
                        perimetro = cu.perimetro();
                        break;
                    case 2: // Rectángulo
                        System.out.print("Ingrese el tamaño del lado1 en cm: ");
                        lado1 = leer.nextDouble();
                        System.out.print("Ingrese el tamaño del lado2 en cm: ");
                        lado2 = leer.nextDouble();
                        Rectangulo re = new Rectangulo(lado1, lado2);
                        area = re.area();
                        perimetro = re.perimetro();
                        break;
                    case 3: // Triangulo
                        System.out.print("Ingrese el tamaño de la base en cm: ");
                        lado1 = leer.nextDouble();
                        System.out.print("Ingrese el tamaño de la altura en cm: ");
                        lado2 = leer.nextDouble();
                        Triangulo tr = new Triangulo(lado1, lado2);
                        area = tr.area();
                        perimetro = tr.perimetro();
                        break;
                    case 4: // Circulo
                        System.out.print("Ingrese el tamaño del radio en cm: ");
                        lado1 = leer.nextDouble();
                        Circulo ci = new Circulo(lado1);
                        area = ci.area();
                        perimetro = ci.perimetro();
                        break;
                    case 5: // Hexágono
                        System.out.print("Ingrese el tamaño del lado en cm: ");
                        lado1 = leer.nextDouble();
                        Hexagono hex = new Hexagono(lado1);
                        area = hex.area();
                        perimetro = hex.perimetro();
                        break;
                    case 6: // Pentágono
                        System.out.print("Ingrese el tamaño del lado en cm: ");
                        lado1 = leer.nextDouble();
                        Pentagono pe = new Pentagono(lado1);
                        area = pe.area();
                        perimetro = pe.perimetro();
                        break;
                    case 7: // Rombo
                        Rombo ro = new Rombo();
                        ro.inicializarRombo();
                        area = ro.area();
                        perimetro = ro.perimetro();
                        break;
                    case 8:
                        mostrarMenu = false;
                        break;
                    default:
                        throw new AssertionError();

                }
                if (mostrarMenu) {
                    System.out.printf("El área del %s es %.2f cm2 y el perímetro es %.2f cm.\n", figura[opcion], area, perimetro);
                }

            }

        }
    }
}