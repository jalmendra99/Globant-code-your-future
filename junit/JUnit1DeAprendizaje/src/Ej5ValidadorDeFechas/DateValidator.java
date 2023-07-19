/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 5 - Página 10

Fer V - Jalmendra99@gmail.com

5. Validador de Fechas:
Crea una clase DateValidator que valide la corrección de una fecha 
(por ejemplo, si es una fecha válida en el calendario gregoriano). 
Escribe pruebas unitarias para asegurarte de que el validador de fechas 
detecte correctamente fechas válidas e inválidas, teniendo en cuenta 
diferentes casos, como años bisiestos.

 */
package Ej5ValidadorDeFechas;

public class DateValidator {

    public boolean fechaValida(int anio, int mes, int dia) {

        if (anio < 0) {
            System.out.println("El año es menor a cero.");
            return false;
        }

        if (mes < 1 || mes > 12) {
            System.out.println("El mes no está entre 1 y 12.");
            return false;
        }

        if (dia < 1 || dia > cantDiasPorMes(anio, mes)) {
            System.out.println("La cantidad de días es incorrecta.");
            return false;
        }

        return true;
    }

    private int cantDiasPorMes(int anio, int mes) {
        switch (mes) {
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                return 31;
            case 4:
            case 6:
            case 9:
            case 11:
                return 30;
            case 2:
                return esAnioBisiesto(anio) ? 29 : 28;
            default:
                System.out.println("Hubo un error al calcular la cantidad de días del mes.");
                return -1;
        }
    }

    private boolean esAnioBisiesto(int anio) {
        return ((anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0));
    }
}