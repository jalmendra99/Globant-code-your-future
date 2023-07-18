/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 3 - Página 10

Fer V - Jalmendra99@gmail.com

 */

package Ej3ValidadorDeContrasenias;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class PasswordValidatorTest {

    public PasswordValidatorTest() {
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
     * Test of respetaLongitudMinima method, of class PasswordValidator.
     */
    @Test
    public void testRespetaLongitudMinima() {
        System.out.println("respetaLongitudMinima");
        String pass = "";
        int longitudMinima = 0;
        boolean expResult = true;
        boolean result = PasswordValidator.respetaLongitudMinima(pass, longitudMinima);
        assertEquals(expResult, result);

        pass = "holaMundo";
        longitudMinima = 8;
        expResult = true;
        result = PasswordValidator.respetaLongitudMinima(pass, longitudMinima);
        assertEquals(expResult, result);

        pass = "porQueSibaritaEsTanRica?";
        longitudMinima = 100;
        expResult = false; // es más corta que la longitudMinima.
        result = PasswordValidator.respetaLongitudMinima(pass, longitudMinima);
        assertEquals(expResult, result);

    }

    /**
     * Test of tieneCaracteresEspeciales method, of class PasswordValidator.
     */
    @Test
    public void testTieneCaracteresEspeciales() {
        System.out.println("tieneCaracteresEspeciales");
        String pass = "";
        boolean expResult = false; // no tiene caracteres especiales
        boolean result = PasswordValidator.tieneCaracteresEspeciales(pass);
        assertEquals(expResult, result);

        pass = "holaMundo";
        expResult = false; // no tiene caracteres especiales
        result = PasswordValidator.tieneCaracteresEspeciales(pass);
        assertEquals(expResult, result);

        pass = "porQueSibaritaEsTanRica?";
        expResult = true;
        result = PasswordValidator.tieneCaracteresEspeciales(pass);
        assertEquals(expResult, result);

    }

    /**
     * Test of tieneLetrasMayusculas method, of class PasswordValidator.
     */
    @Test
    public void testTieneLetrasMayusculas() {
        System.out.println("tieneLetrasMayusculas");
        String pass = "";
        boolean expResult = false; // no tiene mayúsculas
        boolean result = PasswordValidator.tieneLetrasMayusculas(pass);
        assertEquals(expResult, result);
        
        pass = "holaMundo";
        expResult = true;
        result = PasswordValidator.tieneLetrasMayusculas(pass);
        assertEquals(expResult, result);

        pass = "porQueSibaritaEsTanRica?";
        expResult = true;
        result = PasswordValidator.tieneLetrasMayusculas(pass);
        assertEquals(expResult, result);
        
    }

    @Test
    public void testContraseniaValida() {
        System.out.println("Contraseñas válidas");
        int longitudMinima = 0;
        String pass = "";
        boolean expResult = false; // no tiene caracteres especiales, ni mayúsculas
        boolean result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertEquals(expResult, result);
        
        longitudMinima = 8;
        pass = "holaMundo";
        expResult = false; // no tiene caracteres especiales
        result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertEquals(expResult, result);
        
        longitudMinima = 8;
        pass = "holaMundo!"; // Se agregó un caracter especial
        expResult = true; 
        result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertEquals(expResult, result);

        longitudMinima = 100;
        pass = "porQueSibaritaEsTanRica?";
        expResult = false; // es más corta que la longitudMinima.
        result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertEquals(expResult, result);
        
        longitudMinima = 10; // Se achicó la longitudMinima.
        pass = "porQueSibaritaEsTanRica?";
        expResult = true;
        result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertEquals(expResult, result);
        
    }

}
