/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 8 - Página 30

Realizar una clase llamada Cadena que tenga como atributos una frase (de tipo de String) y su longitud. 
En el main se creará el objeto y se le pedirá al usuario que ingrese una frase 
que puede ser una palabra o varias palabras separadas por un espacio en blanco 
y a través de los métodos set, se guardará la frase y la longitud de manera automática 
según la longitud de la frase ingresada. Deberá además implementar los siguientes métodos:
a) Método mostrarVocales(), deberá contabilizar la cantidad de vocales que tiene la frase ingresada.
b) Método invertirFrase(), deberá invertir la frase ingresada y mostrarla por pantalla. 
    Por ejemplo: Entrada: "casa blanca", Salida: "acnalb asac".
c) Método vecesRepetido(String letra), recibirá un carácter ingresado por el usuario 
    y contabilizar cuántas veces se repite el carácter en la frase, por ejemplo:
d) Entrada: frase = "casa blanca". Salida: El carácter 'a' se repite 4 veces.
e) Método compararLongitud(String frase), deberá comparar la longitud de la frase 
    que compone la clase con otra nueva frase ingresada por el usuario.
f) Método unirFrases(String frase), deberá unir la frase contenida en la clase Cadena 
    con una nueva frase ingresada por el usuario y mostrar la frase resultante.
g) Método reemplazar(String letra), deberá reemplazar todas las letras “a” 
    que se encuentren en la frase, por algún otro carácter seleccionado por el usuario 
    y mostrar la frase resultante.
h) Método contiene(String letra), deberá comprobar si la frase contiene una letra 
    que ingresa el usuario y devuelve verdadero si la contiene y falso si no.


Fer V - Jalmendra99@gmail.com

 */
package Ej08Cadena;

import java.util.Scanner;

public class Ej08 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Crea una Cadena
        Cadena ca = new Cadena();

        // Llena la cadena con el setter
        System.out.println("Ingrese una cadena de texto.");
        ca.setFrase(leer.nextLine());

        // Se muestran las vocales
        System.out.println("La cadena tiene " + ca.mostrarVocales() + " vocales.");

        // Se muestra la frase invertida
        System.out.print("La frase invertida es: ");
        ca.invertirFrase();

        // Se muestra la cantidad de veces que un caracter está repetido.
        System.out.print("Ingrese un caracter para ver si está repetido: ");
        ca.vecesRepetido(leer.nextLine().charAt(0));

        // Se compara la longitud de una cadena ingresada por el usuario
        // contra la cadena actual.
        System.out.println("Ingrese otra cadena para comparar su longitúd con la de la primera.");
        ca.compararLongitud(leer.nextLine());

        // Se une una frase ingresada por el usuario a la frase original.
        System.out.println("Ingrese otra cadena para concatenarla a la cadena original.");
        ca.unirFrases(leer.nextLine());

        // Se reemplazan todas las letras a por la letra ingresada por el usuario.
        System.out.println("Ingrese una letra, para que reemplaze a todas las letras a en la cadena.");
        ca.reemplazar(leer.nextLine().charAt(0));

        // Se comprueba si una letra ingresada por el usuario está en la cadena
        System.out.println("Ingrese una letra para ver si está en la cadena.");
        char caracter = leer.nextLine().charAt(0);
        if (ca.contiene(caracter)) {
            System.out.println("El caracter " + caracter + " está en la cadena.");
        } else {
            System.out.println("El caracter " + caracter + " no está en la cadena.");
        }
    }
}
