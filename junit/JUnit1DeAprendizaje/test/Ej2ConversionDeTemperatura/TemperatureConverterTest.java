/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 2 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej2ConversionDeTemperatura;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class TemperatureConverterTest {

    public TemperatureConverterTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of celciusAFarenheit method, of class TemperatureConverter.
     */
    // Notes: Celsius and Fahrenheit are the same at -40°.
    // Water boils at 100°C or 212°F.
    // Water freezes at 0°C and 32°F.
    @Test
    public void testCelciusAFarenheit() {
        System.out.println("celciusAFarenheit");
        double celcius = -40;
        double expResult = -40;
        double result = TemperatureConverter.celciusAFarenheit(celcius);
        assertEquals(expResult, result, 0.0);

        celcius = 100;
        expResult = 212;
        result = TemperatureConverter.celciusAFarenheit(celcius);
        assertEquals(expResult, result, 0.0);

        celcius = 0;
        expResult = 32;
        result = TemperatureConverter.celciusAFarenheit(celcius);
        assertEquals(expResult, result, 0.0);
    }

    /**
     * Test of farenheitACelcius method, of class TemperatureConverter.
     */
    // Notes: Celsius and Fahrenheit are the same at -40°.
    // Water boils at 100°C or 212°F.
    // Water freezes at 0°C and 32°F.
    @Test
    public void testFarenheitACelcius() {
        System.out.println("farenheitACelcius");
        double farenheit = -40;
        double expResult = -40;
        double result = TemperatureConverter.farenheitACelcius(farenheit);
        assertEquals(expResult, result, 0.0);

        farenheit = 212;
        expResult = 100;
        result = TemperatureConverter.farenheitACelcius(farenheit);
        assertEquals(expResult, result, 0.0);

        farenheit = 32;
        expResult = 0;
        result = TemperatureConverter.farenheitACelcius(farenheit);
        assertEquals(expResult, result, 0.0);
    }

    /**
     * Test of kelvinACelcius method, of class TemperatureConverter.
     */
    // Note: Absolute zero is 0 K (= -273 °C))
    @Test
    public void testKelvinACelcius() {
        System.out.println("kelvinACelcius");
        double kelvin = 0.0;
        double expResult = -273;
        double result = TemperatureConverter.kelvinACelcius(kelvin);
        assertEquals(expResult, result, 0.0);
    }

    /**
     * Test of celciusAKelvin method, of class TemperatureConverter.
     */
    // Note: Absolute zero is 0 K (= -273 °C))
    @Test
    public void testCelciusAKelvin() {
        System.out.println("celciusAKelvin");
        double celcius = -273;
        double expResult = 0.0;
        double result = TemperatureConverter.celciusAKelvin(celcius);
        assertEquals(expResult, result, 0.0);
    }

    /**
     * Test of kelvinAFarenheit method, of class TemperatureConverter.
     */
    // Notes:
    // 0 K = -459.67 °F
    // 260 K = 8.33 °F
    @Test
    public void testKelvinAFarenheit() {
        System.out.println("kelvinAFarenheit");
        double kelvin = 0.0;
        double expResult = -459.67;
        double result = TemperatureConverter.kelvinAFarenheit(kelvin);
        assertEquals(expResult, result, 0.0);

        kelvin = 260;
        expResult = 8.33;
        result = TemperatureConverter.kelvinAFarenheit(kelvin);
        assertEquals(expResult, result, 0.0);
    }

    /**
     * Test of FahrenheitAKelvin method, of class TemperatureConverter.
     */
    // Notes:
    // 0 K = -459.67 °F
    // 260 K = 8.33 °F
    @Test
    public void testFarenheitAKelvin() {
        System.out.println("FarenheitAKelvin");
        double farenheit = -459.67;
        double expResult = 0.0;
        double result = TemperatureConverter.FahrenheitAKelvin(farenheit);
        assertEquals(expResult, result, 0.0);

        farenheit = 8.33;
        expResult = 260;
        result = TemperatureConverter.FahrenheitAKelvin(farenheit);
        assertEquals(expResult, result, 0.0);
    }

}
