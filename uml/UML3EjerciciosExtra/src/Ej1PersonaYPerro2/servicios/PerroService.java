/*
Java - UML - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 12

Fer V - Jalmendra99@gmail.com

--
Info: 
https://www.expertoanimal.com/nombres-graciosos-para-perros-23298.html
https://www.expertoanimal.com/las-10-razas-de-perros-mas-populares-del-mundo-23205.html

 */
package Ej1PersonaYPerro2.servicios;

import Ej1PersonaYPerro2.entidades.Perro;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class PerroService {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    private enum nombres {
        Alf, Babas, BamBam, Bandido, Barbas, Bigotes, Bizcocho, Bolita, Boop, Cacahuete, Casanova,
        Chupete, Coco, Comida, Comino, Coquito, Perro, Dolar, Ninja, Epi, Euro,
        Fideo, Feíto, Flaco, Fofito, Fofo, Fresco, Freson, Garbanzo, Gloton, Golfo, Gordito, Gordo,
        Hashtag, Hipo, Houdini, Lacasito, Mani, Melon, Mondongo, Rabito, Rastas,
        Rulo, Orejas, Otto, Patan, PC, Pelo, Peso, Piecito, Pipiolo, Pirulo, Pistacho, Playboy, Pompon,
        Potito, Pulgas, Pulgoso, Ralf, Sheldon, Surimi, Taco, Tato, Tocao, Tonel, Torpedo, Toto, Quesito,
        Queso, Up, Ukelele, Whisky, Yen, Yoda, Zumo
    };

    private enum razas {
        Husky_siberiano, Golden_retriever, Caniche, Pastor_aleman, Yorkshire_terrier,
        Dalmata, Boxer, Chihuahua, Bulldog_ingles, Beagle
    };

    private enum tamanios {
        CHICO, MEDIANO, GRANDE
    };

    // Constructores
    public PerroService() {
    }

    // Métodos
    public ArrayList<Perro> crearMuchosPerros(int cantidad) {

        ArrayList<Perro> perros = new ArrayList<Perro>();
        int azar;
        String nombre;
        String raza;
        int edad;
        String tamanio;

        for (int i = 0; i < cantidad; i++) {

            // Se elije al azar un nombre de la lista de nombres.
            azar = (int) (Math.random() * nombres.values().length);
            nombre = nombres.values()[azar].toString();

            // Se elije al azar una raza de la lista de razas.
            azar = (int) (Math.random() * razas.values().length);
            raza = razas.values()[azar].toString();

            // Se elije una edad al azar entre 1 y 18
            edad = (int) (Math.random() * 18 + 1);

            // Se elije un tamaño al azar de la lista de tamaños.
            azar = (int) (Math.random() * tamanios.values().length);
            tamanio = tamanios.values()[azar].toString();

            perros.add(new Perro(nombre, raza, edad, tamanio));

        }

        return perros;
    }

    public void mostrarPerros(ArrayList<Perro> perros) {
        System.out.println("\nMostrando todos los perros..");
        for (Iterator<Perro> iterator = perros.iterator(); iterator.hasNext();) {
            mostrarPerro(iterator.next());
        }
    }

    public void mostrarPerro(Perro dog) {
        System.out.println(dog);
    }

}
