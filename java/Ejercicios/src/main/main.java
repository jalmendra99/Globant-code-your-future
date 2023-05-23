/*
Java - Ejercicios
Clase main para elejir el ejercicio a ejecutar.
Fer V - Jalmendra99@gmail.com

 */
package main;

import java.util.Scanner;

public class main {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);
        int opcion, opcion2;

        // Solo para poder llamar a los métodos main()
        String[] nada = new String[0];

        // Muestra un menú principal para elegír el paquete.
        do {
            System.out.println("");
            System.out.println("Ejercicios:");
            System.out.println("1. Java Intro");
            System.out.println("2. De aprendizaje");
            System.out.println("3. Extras   <-- todavía no están resueltos.");
            System.out.println("4. En Clase <-- todavía no están resueltos.");
            System.out.println("5. <Salir>");
            System.out.print("Elija una opción:");

            opcion = leer.nextInt();

            switch (opcion) {
                case 1:

                    do {
                        System.out.println("");
                        System.out.println("Ejercicios Java Intro:");
                        System.out.println("Elija una opción (1 a 14)");
                        System.out.print("O 15 para volvér al menú anterior: ");

                        opcion2 = leer.nextInt();

                        switch (opcion2) {
                            case 1:
                                Ejercicios1JavaIntro.JavaIntroEj01.main(nada);
                                break;
                            case 2:
                                Ejercicios1JavaIntro.JavaIntroEj02.main(nada);
                                break;
                            case 3:
                                Ejercicios1JavaIntro.JavaIntroEj03.main(nada);
                                break;
                            case 4:
                                Ejercicios1JavaIntro.JavaIntroEj04.main(nada);
                                break;
                            case 5:
                                Ejercicios1JavaIntro.JavaIntroEj05.main(nada);
                                break;
                            case 6:
                                Ejercicios1JavaIntro.JavaIntroEj06.main(nada);
                                break;
                            case 7:
                                Ejercicios1JavaIntro.JavaIntroEj07.main(nada);
                                break;
                            case 8:
                                Ejercicios1JavaIntro.JavaIntroEj08.main(nada);
                                break;
                            case 9:
                                Ejercicios1JavaIntro.JavaIntroEj09.main(nada);
                                break;
                            case 10:
                                Ejercicios1JavaIntro.JavaIntroEj10.main(nada);
                                break;
                            case 11:
                                Ejercicios1JavaIntro.JavaIntroEj11.main(nada);
                                break;
                            case 12:
                                Ejercicios1JavaIntro.JavaIntroEj12.main(nada);
                                break;
                            case 13:
                                Ejercicios1JavaIntro.JavaIntroEj13.main(nada);
                                break;
                            case 14:
                                Ejercicios1JavaIntro.JavaIntroEj14.main(nada);
                                break;
                            case 15: // Volver al menú anterior.                            
                                break;
                            default:
                                System.out.println("Opción no válida.");
                        }
                    } while (opcion2 != 15);

                    break;
                case 2:
                    do {
                        System.out.println("");
                        System.out.println("Ejercicios de aprendizaje:");
                        System.out.println("Elija una opción (1 a 21)");
                        System.out.print("O 22 para volvér al menú anterior: ");

                        opcion2 = leer.nextInt();

                        switch (opcion2) {
                            case 1:
                                Ejercicios2DeAprendizaje.Ej01SumaDeEnteros.main(nada);
                                break;
                            case 2:
                                Ejercicios2DeAprendizaje.Ej02StringCargarYMostrar.main(nada);
                                break;
                            case 3:
                                Ejercicios2DeAprendizaje.Ej03StringUpperLower.main(nada);
                                break;
                            case 4:
                                Ejercicios2DeAprendizaje.Ej04CentigradoAFarenheit.main(nada);
                                break;
                            case 5:
                                Ejercicios2DeAprendizaje.Ej05DobleTripleRaiz.main(nada);
                                break;
                            case 6:
                                Ejercicios2DeAprendizaje.Ej06ParOImpar.main(nada);
                                break;
                            case 7:
                                Ejercicios2DeAprendizaje.Ej07ComparaString.main(nada);
                                break;
                            case 8:
                                Ejercicios2DeAprendizaje.Ej08StringLength.main(nada);
                                break;
                            case 9:
                                Ejercicios2DeAprendizaje.Ej09Substring.main(nada);
                                break;
                            case 10:
                                Ejercicios2DeAprendizaje.Ej10SumaDeEnteros.main(nada);
                                break;
                            case 11:
                                Ejercicios2DeAprendizaje.Ej11Menu.main(nada);
                                break;
                            case 12:
                                Ejercicios2DeAprendizaje.Ej12SubstringLengthEquals.main(nada);
                                break;
                            case 13:
                                Ejercicios2DeAprendizaje.Ej13DibujarCuadrado.main(nada);
                                break;
                            case 14:
                                Ejercicios2DeAprendizaje.Ej14VoidFunction.main(nada);
                                break;
                            case 15:
                                Ejercicios2DeAprendizaje.Ej15LlenarVector.main(nada);
                                break;
                            case 16:
                                Ejercicios2DeAprendizaje.Ej16BuscarEnVector.main(nada);
                                break;
                            case 17:
                                Ejercicios2DeAprendizaje.Ej17DigitosDeEntero.main(nada);
                                break;
                            case 18:
                                Ejercicios2DeAprendizaje.Ej18MatrizTraspuesta.main(nada);
                                break;
                            case 19:
                                Ejercicios2DeAprendizaje.Ej19MatrizAntisimetrica.main(nada);
                                break;
                            case 20:
                                Ejercicios2DeAprendizaje.Ej20MatrizMagica.main(nada);
                                break;
                            case 21:
                                Ejercicios2DeAprendizaje.Ej21BuscarSubmatriz.main(nada);
                                break;
                            case 22: // Volver al menú anterior.                            
                                break;
                            default:
                                System.out.println("Opción no válida.");
                        }
                    } while (opcion2 != 22);
                    break;
                case 3:
                    System.out.println("Resolviendo...");
                    break;
                case 4:
                    System.out.println("Resolviendo...");
                    break;
                case 5: // Salir.                    
                    break;
                default:
                    System.out.println("Opción no válida.");
            }

        } while (opcion != 5);

    }
}
