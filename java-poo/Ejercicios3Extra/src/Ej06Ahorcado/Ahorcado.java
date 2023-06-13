/*
Java-POO - Ejercicios extra.
Ejercicio 6 - Página 35

Juego Ahorcado: 
Crear una clase Ahorcado (como el juego), la cual deberá contener 
como atributos, un vector con la palabra a buscar, la cantidad de letras encontradas 
y la cantidad jugadas máximas que puede realizar el usuario. 
Definir los siguientes métodos con los parámetros que sean necesarios:

* Constructores, tanto el vacío como el parametrizado.
* Metodo crearJuego(): le pide la palabra al usuario y cantidad de jugadas máxima. 
    Con la palabra del usuario, pone la longitud de la palabra, como la longitud del vector. 
    Después ingresa la palabra en el vector, letra por letra, quedando cada letra de la palabra 
    en un índice del vector. Y también, guarda en cantidad de jugadas máximas, 
    el valor que ingresó el usuario y encontradas en 0.
* Método longitud(): muestra la longitud de la palabra que se debe encontrar. 
    Nota: buscar como se usa el vector.length.
* Método buscar(letra):  este método recibe una letra dada por el usuario 
    y busca sila letra ingresada es parte de la palabra o no. 
    También informará si la letra estaba o no.
* Método encontradas(letra):  que reciba una letra ingresada por el usuario 
    y muestre cuantas letras han sido encontradas y cuantas le faltan. 
    Este método además deberá devolver true si la letra estaba y false 
    si la letra no estaba, ya que, cada vez que se busque una letra que no esté, 
    se le restará uno a sus oportunidades.
* Método intentos(): para mostrar cuantas oportunidades le queda al jugador.
* Método juego(): el método juego se encargará de llamar todos los métodos previamente mencionados 
    e informará cuando el usuario descubra toda la palabra o se quede sin intentos. 
    Este método se llamará en el main.

Un ejemplo de salida puede ser así:

Ingrese una letra: a 
Longitud de la palabra: 6 
Mensaje: La letra pertenece a la palabra 
Número de letras (encontradas, faltantes): (3,4) 
Número de oportunidades restantes: 4 
---------------------------------------------- 
Ingrese una letra: z 
Longitud de la palabra: 6 
Mensaje: La letra no pertenece a la palabra 
Número de letras (encontradas, faltantes): (3,4) 
Número de oportunidades restantes: 3 
--------------------------------------------- 
Ingrese una letra: b 
Longitud de la palabra: 6 
Mensaje: La letra no pertenece a la palabra 
Número de letras (encontradas, faltantes): (4,3) 
Número de oportunidades restantes: 2 
---------------------------------------------- 
Ingrese una letra: u 
Longitud de la palabra: 6 
Mensaje: La letra no pertenece a la palabra 
Número de letras (encontradas, faltantes): (4,3) 
Número de oportunidades restantes: 1 
---------------------------------------------- 
Ingrese una letra:q 
Longitud de la palabra: 6 
Mensaje: La letra no pertenece a la palabra 
Mensaje: Lo sentimos, no hay más oportunidades


Fer V - Jalmendra99@gmail.com

 */
package Ej06Ahorcado;

import java.util.Scanner;

public class Ahorcado {

    // Atributos
    private char[] palabra;
    private String letrasEncontradas;
    private int cantLetrasEncontradas;
    private int cantJugadasMaximas;

    // Constructores
    public Ahorcado() {
    }

    public Ahorcado(char[] palabra, int cantLetrasEncontradas, int cantJugadasMaximas) {
        this.palabra = palabra;
        this.cantLetrasEncontradas = cantLetrasEncontradas;
        this.cantJugadasMaximas = cantJugadasMaximas;
    }

    // Getters y setters. No hizo falta ninguno.
    // Métodos
    public void crearJuego() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        System.out.print("Ingrese la palabra que tendrá que adivinarse: ");
        String palabraString = leer.nextLine();

        // [...] Con la palabra del usuario, pone la longitúd de la palabra,
        // como la longitud del vector. [...]
        palabra = new char[palabraString.length()];

        // [...] Después ingresa la palabra en el vector, letra por letra,
        // quedando cada letra de la palabra en un índice del vector. [..]
        for (int i = 0; i < palabraString.length(); i++) {
            palabra[i] = palabraString.charAt(i);
        }

        // [...] Y también, guarda en cantidad de jugadas máximas, el valor
        // que ingresó el usuario [...]
        System.out.print("Ingrese la cantidad de jugadas máxima: ");
        cantJugadasMaximas = leer.nextInt();

        // [...] y encontradas en 0. [...]
        cantLetrasEncontradas = 0;

        letrasEncontradas = "";
    }

    public void longitud() {
        System.out.println("Longitúd de la palabra: " + palabra.length);
    }

    private int buscar(char letra) {
        int vecesEncontrada = 0;

        // Hay que tener en cuenta si la letra se adivinó antes
        // para saltear toda la función buscar. Sinó
        // se volverán a sumar las letras encontradas a pesar
        // de que ya se habían contabilizado.
        if (letrasEncontradas.contains(String.valueOf(letra))) {
            System.out.println("La letra ingresada ya había sido adivinada.");
            return 0;
        }

        for (int i = 0; i < palabra.length; i++) {
            if (palabra[i] == letra) {
                vecesEncontrada++;
            }
        }

        if (vecesEncontrada > 0) {
            cantLetrasEncontradas += vecesEncontrada;
            letrasEncontradas = letrasEncontradas.concat(String.valueOf(letra));
            System.out.println("Mensaje: La letra pertenece a la palabra.");
        } else {
            System.out.println("Mensaje: La letra no pertenece a la palabra.");
        }

        return vecesEncontrada;
    }

    private boolean encontradas() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        System.out.println("------------------------------------");
        System.out.print("Ingrese una letra: ");
        char letra = leer.next().charAt(0);

        boolean encontradas;
        if (buscar(letra) > 0) {
            encontradas = true;
        } else {
            cantJugadasMaximas--;
            encontradas = false;
        }
        System.out.print("Número de letras (encontradas, faltantes): (");
        System.out.print(cantLetrasEncontradas);
        System.out.println(", " + (palabra.length - cantLetrasEncontradas) + ")");

        return encontradas;
    }

    private void intentos() {
        System.out.println("Número de oportunidades restantes: " + cantJugadasMaximas);
    }

    public void juego() {
        crearJuego();
        while (cantLetrasEncontradas < palabra.length && cantJugadasMaximas > 0) {
            encontradas();
            intentos();
        }
        if (cantLetrasEncontradas == palabra.length) {
            System.out.println("Mensaje: ¡Encontró la palabra!");
        } else {
            System.out.println("Mensaje: Lo sentimos, no hay más oportunidades");
        }
    }

}
