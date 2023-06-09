/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 8 - Página 30

Fer V - Jalmendra99@gmail.com

 */
package Ej08Cadena;

public class Cadena {

    // Atributos
    private String frase;
    private int longitud;

    // Constructores
    public Cadena() {
    }

    public Cadena(String frase) {
        this.frase = frase;
        this.longitud = frase.length();
    }

    // Getters y setters
    // Setter de longitud no se crea, porque la longitud de la frase
    // se calcula automáticamente en el constructor y el setter de frase.
    public String getFrase() {
        return frase;
    }

    public void setFrase(String frase) {
        this.frase = frase;
        this.longitud = frase.length();
    }

    public int getLongitud() {
        return longitud;
    }

    // Métodos
    public int mostrarVocales() {
        int vocales = 0;
        for (int i = 0; i < longitud; i++) {
            if (esVocal(frase.charAt(i))) {
                vocales++;
            }
        }
        return vocales;
    }

    public void invertirFrase() {
        for (int i = (longitud - 1); i >= 0; i--) {
            System.out.print(frase.charAt(i));
        }
        System.out.println("");
    }

    public void vecesRepetido(char letra) {
        int repeticiones = 0;
        for (int i = 0; i < longitud; i++) {
            if (letra == frase.charAt(i)) {
                repeticiones++;
            }
        }
        System.out.println("El caracter " + letra + " se repite " + repeticiones + " veces.");
    }

    public void compararLongitud(String frase) {
        if (longitud > frase.length()) {
            System.out.println("La frase ingresada es mas corta que la guardada.");
        } else if (longitud < frase.length()) {
            System.out.println("La frase ingresada es mas larga que la guardada.");
        } else {
            System.out.println("Las frases tienen el mismo largo.");
        }
    }

    public void unirFrases(String frase) {
        System.out.println(this.frase + frase);
    }

    public void reemplazar(char letra) {
        for (int i = 0; i < longitud; i++) {
            if (frase.charAt(i) == 'a') {
                System.out.print(letra);
            } else {
                System.out.print(frase.charAt(i));
            }
        }
        System.out.println("");
    }

    public boolean contiene(char letra) {
        for (int i = 0; i < longitud; i++) {
            if (frase.charAt(i) == letra) {
                return true;
            }
        }
        return false;
    }

    // Retorna verdadero si la "letra" ingresada es una vocal.
    // Falso sino.
    public static boolean esVocal(char letra) {

        boolean vocal;

        vocal = letra == 'a'
                || letra == 'A'
                || letra == 'e'
                || letra == 'E'
                || letra == 'i'
                || letra == 'I'
                || letra == 'o'
                || letra == 'O'
                || letra == 'u'
                || letra == 'U';

        return vocal;
    }

}
