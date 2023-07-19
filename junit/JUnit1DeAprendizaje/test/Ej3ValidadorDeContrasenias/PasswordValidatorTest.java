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
        boolean result = PasswordValidator.respetaLongitudMinima(pass, longitudMinima);
        assertTrue(result);

        pass = "holaMundo";
        longitudMinima = 8;
        result = PasswordValidator.respetaLongitudMinima(pass, longitudMinima);
        assertTrue(result);

        pass = "porQueSibaritaEsTanRica?";
        longitudMinima = 100;
        result = PasswordValidator.respetaLongitudMinima(pass, longitudMinima);
        assertFalse(result); // es más corta que la longitudMinima.

    }

    /**
     * Test of tieneCaracteresEspeciales method, of class PasswordValidator.
     */
    @Test
    public void testTieneCaracteresEspeciales() {
        System.out.println("tieneCaracteresEspeciales");
        String pass = "";
        boolean result = PasswordValidator.tieneCaracteresEspeciales(pass);
        assertFalse(result); // no tiene caracteres especiales

        pass = "holaMundo";
        result = PasswordValidator.tieneCaracteresEspeciales(pass);
        assertFalse(result); // no tiene caracteres especiales

        pass = "porQueSibaritaEsTanRica?";
        result = PasswordValidator.tieneCaracteresEspeciales(pass);
        assertTrue(result);

    }

    /**
     * Test of tieneLetrasMayusculas method, of class PasswordValidator.
     */
    @Test
    public void testTieneLetrasMayusculas() {
        System.out.println("tieneLetrasMayusculas");
        String pass = "";
        boolean result = PasswordValidator.tieneLetrasMayusculas(pass);
        assertFalse(result); // no tiene mayúsculas
        
        pass = "holaMundo";
        result = PasswordValidator.tieneLetrasMayusculas(pass);
        assertTrue(result);

        pass = "porQueSibaritaEsTanRica?";
        result = PasswordValidator.tieneLetrasMayusculas(pass);
        assertTrue(result);
        
    }

    @Test
    public void testContraseniaValida() {
        System.out.println("Contraseñas válidas");
        int longitudMinima = 0;
        String pass = "";
        boolean result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertFalse(result);  // no tiene caracteres especiales, ni mayúsculas
        
        longitudMinima = 8;
        pass = "holaMundo";
        result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertFalse(result); // no tiene caracteres especiales
        
        longitudMinima = 8;
        pass = "holaMundo!";
        result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertTrue(result);  // Se agregó un caracter especial

        longitudMinima = 100;
        pass = "porQueSibaritaEsTanRica?";
        result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertFalse(result); // es más corta que la longitudMinima.
        
        longitudMinima = 10;
        pass = "porQueSibaritaEsTanRica?";
        result = PasswordValidator.contraseniaValida(pass, longitudMinima);
        assertTrue(result);  // Se achicó la longitudMinima.
        
    }

}
