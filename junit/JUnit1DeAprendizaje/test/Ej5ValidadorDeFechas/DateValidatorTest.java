/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 5 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej5ValidadorDeFechas;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class DateValidatorTest {

    public DateValidatorTest() {
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
     * Test of fechaValida method, of class DateValidator.
     */
    @Test
    public void testFechaValida() {
        System.out.println("fechaValida");
        int anio = 0;
        int mes = 0;
        int dia = 0;
        DateValidator instance = new DateValidator();
        boolean expResult = false;
        boolean result = instance.fechaValida(anio, mes, dia);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}