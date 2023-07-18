/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 3 - Página 10

Fer V - Jalmendra99@gmail.com

3. Validador de Contraseñas:
Crea una clase PasswordValidator que verifique la fortaleza de una contraseña 
según ciertas reglas (por ejemplo, longitud mínima, presencia de caracteres especiales, 
letras mayúsculas, etc.). 
Escribe pruebas unitarias para asegurarte de que el validador de contraseñas 
funcione correctamente para diferentes escenarios, incluyendo contraseñas válidas e inválidas.

---
Info:
https://www.baeldung.com/java-string-test-special-characters

 */
package Ej3ValidadorDeContrasenias;

public class PasswordValidator {

    static boolean respetaLongitudMinima(String pass, int longitudMinima) {
        return pass.length() >= longitudMinima;
    }
    
    static boolean tieneCaracteresEspeciales(String pass) {
        for (int i = 0; i < pass.length(); i++) {
            char c = pass.charAt(i);
            if (!Character.isLetterOrDigit(c)) {
                return true;
            }
        }
        return false;
    }
    
    static boolean tieneLetrasMayusculas(String pass) {
        for (int i = 0; i < pass.length(); i++) {
            char c = pass.charAt(i);
            if (!Character.isUpperCase(c)) {
                return true;
            }
        }
        return false;
    }
    
    static boolean contraseniaValida(String pass, int longitudMinima) {
        return respetaLongitudMinima(pass, longitudMinima) && 
                tieneCaracteresEspeciales(pass) && 
                tieneLetrasMayusculas(pass);
    }
    
}
