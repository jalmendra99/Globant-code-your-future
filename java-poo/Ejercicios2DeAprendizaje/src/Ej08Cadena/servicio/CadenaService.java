/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 8 - Página 30

Fer V - Jalmendra99@gmail.com

 */
package Ej08Cadena.servicio;

import Ej08Cadena.entidad.Cadena;
import java.util.Scanner;

public class CadenaService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Cadena crearCadena() {

        // Crea una Cadena
        Cadena ca = new Cadena();

        // Llena la cadena con el setter
        System.out.println("Ingrese una cadena de texto.");
        ca.setFrase(leer.nextLine());

        // Retorna la cadena creada
        return ca;
    }

    public void hacerPruebas(Cadena ca) {

        // Se muestran las vocales
        System.out.println("La cadena tiene " + mostrarVocales(ca.getFrase(), ca.getLongitud()) + " vocales.");

        // Se muestra la frase invertida
        System.out.print("La frase invertida es: ");
        invertirFrase(ca.getFrase(), ca.getLongitud());

        // Se muestra la cantidad de veces que un caracter está repetido.
        System.out.print("Ingrese un caracter para ver si está repetido: ");
        vecesRepetido(leer.nextLine().charAt(0), ca.getFrase(), ca.getLongitud());

        // Se compara la longitud de una cadena ingresada por el usuario
        // contra la cadena actual.
        System.out.println("Ingrese otra cadena para comparar su longitúd con la de la primera.");
        compararLongitud(leer.nextLine(), ca.getLongitud());

        // Se une una frase ingresada por el usuario a la frase original.
        System.out.println("Ingrese otra cadena para concatenarla a la cadena original.");
        unirFrases(ca.getFrase(), leer.nextLine());

        // Se reemplazan todas las letras a por la letra ingresada por el usuario.
        System.out.println("Ingrese una letra, para que reemplaze a todas las letras a en la cadena.");
        reemplazar(leer.nextLine().charAt(0), ca.getFrase(), ca.getLongitud());

        // Se comprueba si una letra ingresada por el usuario está en la cadena
        System.out.println("Ingrese una letra para ver si está en la cadena.");
        char caracter = leer.nextLine().charAt(0);
        if (contiene(caracter, ca.getFrase(), ca.getLongitud())) {
            System.out.println("El caracter " + caracter + " está en la cadena.");
        } else {
            System.out.println("El caracter " + caracter + " no está en la cadena.");
        }
    }

    public int mostrarVocales(String frase, int longitud) {
        int vocales = 0;
        for (int i = 0; i < longitud; i++) {
            if (esVocal(frase.charAt(i))) {
                vocales++;
            }
        }
        return vocales;
    }

    public void invertirFrase(String frase, int longitud) {
        for (int i = (longitud - 1); i >= 0; i--) {
            System.out.print(frase.charAt(i));
        }
        System.out.println("");
    }

    public void vecesRepetido(char letra, String frase, int longitud) {
        int repeticiones = 0;
        for (int i = 0; i < longitud; i++) {
            if (letra == frase.charAt(i)) {
                repeticiones++;
            }
        }
        System.out.println("El caracter " + letra + " se repite " + repeticiones + " veces.");
    }

    public void compararLongitud(String frase, int longitud) {
        if (longitud > frase.length()) {
            System.out.println("La frase ingresada es mas corta que la guardada.");
        } else if (longitud < frase.length()) {
            System.out.println("La frase ingresada es mas larga que la guardada.");
        } else {
            System.out.println("Las frases tienen el mismo largo.");
        }
    }

    public void unirFrases(String frase1, String frase2) {
        System.out.println(frase1 + frase2);
    }

    public void reemplazar(char letra, String frase, int longitud) {
        for (int i = 0; i < longitud; i++) {
            if (frase.charAt(i) == 'a') {
                System.out.print(letra);
            } else {
                System.out.print(frase.charAt(i));
            }
        }
        System.out.println("");
    }

    public boolean contiene(char letra, String frase, int longitud) {
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
