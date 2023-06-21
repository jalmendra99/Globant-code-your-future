/*
Java-POO - Ejercicios extra.
Ejercicio 6 - Página 35

Fer V - Jalmendra99@gmail.com

 */
package Ej06Ahorcado.servicio;

import Ej06Ahorcado.entidad.AhorcadoMejorado;
import java.util.Scanner;

public class AhorcadoMejoradoService {
    
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public AhorcadoMejorado crearAhorcado() {
        
        AhorcadoMejorado am = new AhorcadoMejorado();
        
        System.out.print("Ingrese la palabra que tendrá que adivinarse: ");
        String palabraString = leer.nextLine();

        // [...] Con la palabra del usuario, pone la longitúd de la palabra,
        // como la longitud del vector. [...]
        char[] palabra = new char[palabraString.length()];
        am.initializePalabra(palabra.length);
        am.initializeLetrasEncontradas(palabra.length);

        // [...] Después ingresa la palabra en el vector, letra por letra,
        // quedando cada letra de la palabra en un índice del vector. [..]
        for (int i = 0; i < palabraString.length(); i++) {
            palabra[i] = palabraString.charAt(i);
            am.setLetrasEncontradas('-', i);
        }
        
        am.setPalabra(palabra);

        // [...] Y también, guarda en cantidad de jugadas máximas, el valor
        // que ingresó el usuario [...]
        System.out.print("Ingrese la cantidad de jugadas máxima: ");
        am.setCantJugadasMaximas(leer.nextInt());

        // [...] y encontradas en 0. [...]
        am.setCantLetrasEncontradas(0);
        
        return am;
    }
    
    public void longitud(AhorcadoMejorado ah) {
        System.out.println("La longitúd de la palabra a encontrar es de " + ah.getPalabra().length + " letras.");
    }
    
    private int buscar(AhorcadoMejorado ah, char letra) {
        int vecesEncontrada = 0;

        // Hay que tener en cuenta si la letra se adivinó antes
        // para saltear toda la función buscar. Sinó
        // se volverán a sumar las letras encontradas a pesar
        // de que ya se habían contabilizado.
        for (int i = 0; i < ah.getLetrasEncontradas().length; i++) {
            if (ah.getLetrasEncontradas()[i] == letra) {
                System.out.println("La letra ingresada ya había sido adivinada.");
                return 1;
            }
        }
        
        for (int i = 0; i < ah.getPalabra().length; i++) {
            if (ah.getPalabra()[i] == letra) {
                vecesEncontrada++;
                ah.setLetrasEncontradas(letra, i);
            }
        }
        
        if (vecesEncontrada > 0) {
            ah.setCantLetrasEncontradas(ah.getCantLetrasEncontradas() + vecesEncontrada);
            System.out.println("¡La letra " + letra + " es parte de la palabra!");
        } else {
            System.out.println("La letra " + letra + " no es parte de la palabra.");
        }
        
        return vecesEncontrada;
    }
    
    private boolean encontradas(AhorcadoMejorado ah) {
        
        System.out.print("\nIngrese una letra para ver si se encuentra en la palabra: ");
        char letra = leer.next().charAt(0);
        
        boolean encontradas;
        if (buscar(ah, letra) > 0) {
            encontradas = true;
        } else {
            ah.setCantJugadasMaximas((ah.getCantJugadasMaximas() - 1));
            encontradas = false;
        }
        System.out.print("La cantidad de letras encontradas es " + ah.getCantLetrasEncontradas() + ". ");
        System.out.print("Restan encontrar " + (ah.getPalabra().length - ah.getCantLetrasEncontradas()) + ".\n");
        return encontradas;
    }
    
    private void intentos(AhorcadoMejorado ah) {
        System.out.println("Le quedan " + ah.getCantJugadasMaximas() + " intentos.");
        System.out.print("Letras encontradas: ");
        mostrarLetrasEncontradas(ah);
        System.out.println(".");
    }
    
    public void juego(AhorcadoMejorado ah) {
        
        while (ah.getCantLetrasEncontradas() < ah.getPalabra().length && ah.getCantJugadasMaximas() > 0) {
            encontradas(ah);
            intentos(ah);
        }
        if (ah.getCantLetrasEncontradas() == ah.getPalabra().length) {
            System.out.println("\n¡Encontró la palabra!");
        } else {
            System.out.println("\nNo encontró la palabra.");
        }
    }

    // Agregados
    public void mostrarLetrasEncontradas(AhorcadoMejorado ah) {
        for (int i = 0; i < ah.getLetrasEncontradas().length; i++) {
            System.out.print(ah.getLetrasEncontradas()[i]);
        }
    }
    
}
