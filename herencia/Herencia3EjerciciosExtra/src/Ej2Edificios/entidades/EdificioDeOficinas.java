/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio nnn - Página nnn

Fer V - Jalmendra99@gmail.com

 */
package Ej2Edificios.entidades;

import java.util.ArrayList;
import java.util.Scanner;

public class EdificioDeOficinas extends Edificio {

    // Atributos
    private int nroDePisos;

    // El siguiente arrayList es:
    // primer arrayList determina los pisos
    // segundo arrayList determina cada oficina perteneciente a un piso
    // cada valor del segundo arraylist es la cantidad de personas que entran en esa oficina
    private ArrayList<ArrayList<Integer>> pisos = new ArrayList<ArrayList<Integer>>();

    // Constructores
    public EdificioDeOficinas() {
    }
    
    public EdificioDeOficinas(int nroDePisos, double ancho, double alto, double largo) {
        super(ancho, alto, largo);
        this.nroDePisos = nroDePisos;
        calcularPersonas();
    }

    // Getters y setters
    public int getNroDePisos() {
        return nroDePisos;
    }
    
    public void setNroDePisos(int nroDePisos) {
        this.nroDePisos = nroDePisos;
    }

    // Métodos
    public double calcularSuperficie() {
        return super.getAncho() * super.getLargo();
    }
    
    public double calcularVolumen() {
        return super.getAncho() * super.getLargo() * super.getAlto();
    }
    
    public void calcularPersonas() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        int oficinas;
        ArrayList<Integer> personasPorOficina = new ArrayList<Integer>();
        
        System.out.println("\nEl edificio tiene " + this.nroDePisos + " pisos.");
        for (int i = 0; i < this.nroDePisos; i++) {
            System.out.print("Ingrese la cantidad de oficinas que hay en el piso " + (i + 1) + ": ");
            oficinas = leer.nextInt();
            personasPorOficina = new ArrayList<Integer>();
            for (int j = 0; j < oficinas; j++) {
                System.out.print("Ingrese la cantidad de personas que entran en la oficina " + (j + 1) + ": ");
                personasPorOficina.add(leer.nextInt());
            }
            pisos.add(personasPorOficina);
            System.out.println(pisos.get(i));
        }
    }
    
    public void cantPersonas() {
        int sumatoria = 0;
        System.out.println("\nLa cantidad de pisos en el edificio es " + this.pisos.size());
        for (int i = 0; i < this.pisos.size(); i++) {
            System.out.println("La cantidad de oficinas en el piso " + (i + 1) + " es " + this.pisos.get(i).size());
            for (int j = 0; j < this.pisos.get(i).size(); j++) {
                System.out.println("La cantidad de personas que entran en la oficina " + (j + 1) + " es " + this.pisos.get(i).get(j));
                sumatoria += this.pisos.get(i).get(j);
            }
        }
        System.out.println("\nLa cantidad total de personas que entran en este edificio de oficinas es " + sumatoria + ".");
    }
    
    @Override
    public String toString() {
        return super.toString() + " EdificioDeOficinas{" + "nroDePisos=" + nroDePisos + ", pisos=" + pisos + '}';
    }
    
}
