/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 2 - Página 16

Fer V - Jalmendra99@gmail.com

 */
package Ej2Edificios;

import Ej2Edificios.entidades.Edificio;
import Ej2Edificios.entidades.EdificioDeOficinas;
import Ej2Edificios.entidades.Polideportivo;
import Ej2Edificios.entidades.tipoPoliEnum;
import java.util.ArrayList;

public class Ej2 {

    public static void main(String[] args) {

        // Se crean los cuatro edificios solicitados en un arrayList
        ArrayList<Edificio> edificios = new ArrayList<Edificio>();

        // Polideportivo attrib: String nombre, tipoPoliEnum tipo, double ancho, double alto, double largo
        edificios.add(new Polideportivo("Poli1", tipoPoliEnum.ABIERTO, 50, 9, 100));
        edificios.add(new Polideportivo("Poli2", tipoPoliEnum.TECHADO, 100, 21, 100));
        // EdificioDeOficinas attrib: int nroDePisos, double ancho, double alto, double largo
        edificios.add(new EdificioDeOficinas(2, 50, 6, 50));
        edificios.add(new EdificioDeOficinas(3, 50, 9, 100));

        System.out.println("\n**RESOLVIENDO*************************\n");
        
        // Variables..
        int cantPolideportivosAbiertos = 0;
        int cantPolideportivosTechados = 0;
        // Se recorre el ArrayList...
        for (Edificio edificio : edificios) {
            if (edificio instanceof Polideportivo) {
                Polideportivo poli = (Polideportivo) edificio;
                if (poli.getTipo() == tipoPoliEnum.ABIERTO) {
                    cantPolideportivosAbiertos++;
                } else if (poli.getTipo() == tipoPoliEnum.TECHADO) {
                    cantPolideportivosTechados++;
                }
            } else if (edificio instanceof EdificioDeOficinas) {
                EdificioDeOficinas edi = (EdificioDeOficinas) edificio;
                edi.cantPersonas();
            }

        }
        System.out.println("\nLa cantidad de Polideportivos Abiertos (sin techo) es " + cantPolideportivosAbiertos + ".");
        System.out.println("\nLa cantidad de Polideportivos techados es " + cantPolideportivosTechados + ".");

    }

}

/**
 * Crear una superclase llamada Edificio con los siguientes atributos: ancho,
 * alto y largo.
 *
 * La clase edificio tendrá como métodos: • Método calcularSuperficie(): calcula
 * la superficie del edificio. • Método calcularVolumen(): calcula el volumen
 * del edifico.
 *
 * Estos métodos serán abstractos y los implementarán las siguientes clases:
 *
 * • Clase Polideportivo con su nombre y tipo de instalación que puede ser
 * Techado o Abierto, esta clase implementará los dos métodos abstractos y los
 * atributos del padre. • Clase EdificioDeOficinas con sus atributos número de
 * oficinas, cantidad de personas por oficina y número de pisos. Esta clase
 * implementará los dos métodos abstractos y los atributos del padre.
 *
 * De esta clase nos interesa saber cuántas personas pueden trabajar en todo el
 * edificio, el usuario dirá cuántas personas entran en cada oficina, cuantas
 * oficinas y el número de piso (suponiendo que en cada piso hay una oficina).
 * Crear el método cantPersonas(), que muestre cuantas personas entrarían en un
 * piso y cuantas en todo el edificio.
 *
 * Por último, en el main vamos a crear un ArrayList de tipo Edificio. El
 * ArrayList debe contener dos polideportivos y dos edificios de oficinas.
 * Luego, recorrer este array y ejecutar los métodos calcularSuperficie y
 * calcularVolumen en cada Edificio. Se deberá mostrar la superficie y el
 * volumen de cada edificio.
 *
 * Además de esto, para la clase Polideportivo nos interesa saber cuántos
 * polideportivos son techados y cuantos abiertos. Y para la clase
 * EdificioDeOficinas deberemos llamar al método cantPersonas() y mostrar los
 * resultados de cada edificio de oficinas.
 *
 */
