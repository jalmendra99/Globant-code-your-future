/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 1 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej1CalculadoraDescuentos;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class DiscountCalculatorTest {

    public DiscountCalculatorTest() {
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

    @Test
    public void testDiscountCalculator() {
        System.out.println("testing DiscountCalculator");

        // Descuento del 10%
        assertEquals(90, DiscountCalculator.calcularDescuento(100, 10), 0);

        // Descuento máximo (100%)
        assertEquals(0, DiscountCalculator.calcularDescuento(1200, 100), 0);

        // Sin descuento (0%)
        assertEquals(800, DiscountCalculator.calcularDescuento(800, 0), 0);

        //fail("¡Falló!");
    }

}
