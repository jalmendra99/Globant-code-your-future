/*
Java - Ejercicios
Clase main para elejir el ejercicio a ejecutar.
Fer V - Jalmendra99@gmail.com

Muestra menús para elejír el paquete y la clase correspondientes
al ejercicio que se quiera ejecutar.


Por hacer / dudas / preguntas:
------------------------------
- Ej19MatrizAntisimetrica - Mejorar legibiidad del código.
- Ej24Fibonacci - Revisar función recursiva. Revisar información del link provisto.
- Ej23SopaDeLetras - Agregar código para que la palabra aparezca en una
                      columna al azar (además de la fila al azar).
- 

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
            imprimeMenu(0);
            opcion = leer.nextInt();

            switch (opcion) {

                case 1: // Ejercicios Java Intro.

                    do {
                        imprimeMenu(1);
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

                case 2: // Ejercicios de aprendizaje.

                    do {
                        imprimeMenu(2);
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

                case 3: // Ejercicios extra.

                    do {
                        imprimeMenu(3);
                        opcion2 = leer.nextInt();

                        switch (opcion2) {
                            case 1:
                                Ejercicios3Extra.Ej01MinutosADiasYHoras.main(nada);
                                break;
                            case 2:
                                Ejercicios3Extra.Ej02RotarVariables.main(nada);
                                break;
                            case 3:
                                Ejercicios3Extra.Ej03VocalONo.main(nada);
                                break;
                            case 4:
                                Ejercicios3Extra.Ej04NumerosRomanos.main(nada);
                                break;
                            case 5:
                                Ejercicios3Extra.Ej05ObraSocialCalculos.main(nada);
                                break;
                            case 6:
                                Ejercicios3Extra.Ej06Promedios.main(nada);
                                break;
                            case 7:
                                Ejercicios3Extra.Ej07MaximoMinimoPromedio.main(nada);
                                break;
                            case 8:
                                Ejercicios3Extra.Ej08Sumatorias.main(nada);
                                break;
                            case 9:
                                Ejercicios3Extra.Ej09DivisionConRestas.main(nada);
                                break;
                            case 10:
                                Ejercicios3Extra.Ej10AdivinaNumero.main(nada);
                                break;
                            case 11:
                                Ejercicios3Extra.Ej11DigitosDeEntero.main(nada);
                                break;
                            case 12:
                                Ejercicios3Extra.Ej12NumerosACadenas.main(nada);
                                break;
                            case 13:
                                Ejercicios3Extra.Ej13EscaleraDeNumeros.main(nada);
                                break;
                            case 14:
                                Ejercicios3Extra.Ej14MatrizPromedios.main(nada);
                                break;
                            case 15:
                                Ejercicios3Extra.Ej15Menu.main(nada);
                                break;
                            case 16:
                                Ejercicios3Extra.Ej16IngreseNPersonas.main(nada);
                                break;
                            case 17:
                                Ejercicios3Extra.Ej17FuncionPrimo.main(nada);
                                break;
                            case 18:
                                Ejercicios3Extra.Ej18VectorSumarElementos.main(nada);
                                break;
                            case 19:
                                Ejercicios3Extra.Ej19VectoresIguales.main(nada);
                                break;
                            case 20:
                                Ejercicios3Extra.Ej20VectorLlenarAleatorio.main(nada);
                                break;
                            case 21:
                                Ejercicios3Extra.Ej21MatrizAlumnos.main(nada);
                                break;
                            case 22:
                                Ejercicios3Extra.Ej22MatrizLlenarAleatorio.main(nada);
                                break;
                            case 23:
                                Ejercicios3Extra.Ej23SopaDeLetras.main(nada);
                                break;
                            case 24:
                                Ejercicios3Extra.Ej24Fibonacci.main(nada);
                                break;
                            case 25: // Volver al menú anterior.                            
                                break;
                            default:
                                System.out.println("Opción no válida.");
                        }
                    } while (opcion2 != 25);
                    break;

                case 4: // Ejercicios en clase.

                    do {
                        imprimeMenu(4);
                        opcion2 = leer.nextInt();

                        switch (opcion2) {

                            case 1:

                                break;

                            case 2:

                                break;

                            case 3:

                                break;

                            case 4:

                                break;

                            case 5:

                                break;

                            case 6:

                                break;

                            case 99: // Volver al menú anterior.

                                break;

                        }
                    } while (opcion2 != 99);

                    break;

                case 5: // Salir.                    
                    break;

                default:
                    System.out.println("Opción no válida.");
            }

        } while (opcion != 5);

    }

    // Imprime por pantalla el menú correspondiente a la "opcion" recibida.
    public static void imprimeMenu(int opcion) {

        System.out.println("");

        switch (opcion) {
            case 0:
                System.out.println("Ejercicios:");
                System.out.println("1. Java Intro");
                System.out.println("2. De aprendizaje");
                System.out.println("3. Extras");
                System.out.println("4. Hechos en Clase con compañeros <-- resolviendo...");
                System.out.println("5. <Salir>");
                System.out.print("Elija una opción: ");
                break;
            case 1:
                System.out.println("Ejercicios Java Intro:");
                System.out.println("Elija una opción (1 a 14)");
                System.out.print("O 15 para volvér al menú anterior: ");
                break;
            case 2:
                System.out.println("Ejercicios de aprendizaje:");
                System.out.println("Elija una opción (1 a 21)");
                System.out.print("O 22 para volvér al menú anterior: ");
                break;
            case 3:
                System.out.println("Ejercicios extra:");
                System.out.println("Elija una opción (1 a 24)");
                System.out.print("O 25 para volvér al menú anterior: ");
                break;
            case 4:
                System.out.println("Ejercicios extra:");
                System.out.println("Ingrese un número para ver si el ejercicio existe");
                System.out.print("O 99 para volvér al menú anterior: ");
                break;
            default:
                System.out.println("Error al imprimír el menú: Opción inválida.");

        }

    }
}
