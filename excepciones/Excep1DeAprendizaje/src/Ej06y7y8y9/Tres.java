/*
Java - Excepciones - Ejercicios de Aprendizaje.
Ejercicio 8 - Página 11

Fer V - Jalmendra99@gmail.com

 */
package Ej06y7y8y9;

public class Tres {

    private static int metodo() {
        int valor = 0;
        try {
            valor = valor + 1;
            valor = valor + Integer.parseInt("W");
            valor = valor + 1;
            System.out.println("Valor final del try: " + valor);
        } catch (NumberFormatException e) {
            valor = valor + Integer.parseInt("W");
            System.out.println("Valor final del catch: " + valor);
        } finally {
            valor = valor + 1;
            System.out.println("Valor final del finally: " + valor);
        }
        valor = valor + 1;
        System.out.println("Valor antes del return: " + valor);
        return valor;
    }
    
       public static void main(String[] args) {

        try {
            System.out.println(metodo());
        } catch(Exception e) {
            System.err.println("Excepcion en metodo() ");
            e.printStackTrace();
        }

    } 

}

/**
 * 
 * Valor final del finally: 2
 * Excepcion en metodo() 
 * java.lang.NumberFormatException: For input string: "W"
 * at java.lang.NumberFormatException.forInputString(NumberFormatException.java:65)
 * at java.lang.Integer.parseInt(Integer.java:580)
 * at java.lang.Integer.parseInt(Integer.java:615)
 * at Ej06y7y8.Tres.metodo(Tres.java:20)
 * at Ej06y7y8.Tres.main(Tres.java:34)
 * 
 * 
 */
