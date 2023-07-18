/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 2 - Página 10

Fer V - Jalmendra99@gmail.com

---
Info: 
https://www.thoughtco.com/temperature-conversion-formulas-609324
https://www.thoughtco.com/convert-kelvin-to-fahrenheit-609234
https://www.thoughtco.com/convert-fahrenheit-to-kelvin-609231
https://www.rapidtables.com/convert/temperature/kelvin-to-fahrenheit.html
https://stackoverflow.com/questions/11701399/round-up-to-2-decimal-places-in-java

 */
package Ej2ConversionDeTemperatura;

public class TemperatureConverter {

    static double celciusAFarenheit(double celcius) {
        return (double) 32 + (9 * celcius / 5);
    }

    static double farenheitACelcius(double fahrenheit) {
        return (double) 5 / 9 * (fahrenheit - 32);
    }

    static double kelvinACelcius(double kelvin) {
        return kelvin - 273;
    }

    static double celciusAKelvin(double celcius) {
        return celcius + 273;
    }

    static double kelvinAFarenheit(double kelvin) {
        double f = ((double) 9 / 5 * (kelvin - 273.15)) + 32;
        // Rounds the result to two digits
        return (double) Math.round(f * 100) / 100;
    }

    static double FahrenheitAKelvin(double fahrenheit) {
        double k = ((double) 5 / 9 * (fahrenheit - 32)) + 273.15;
        return (double) Math.round(k * 100) / 100;
    }

}
