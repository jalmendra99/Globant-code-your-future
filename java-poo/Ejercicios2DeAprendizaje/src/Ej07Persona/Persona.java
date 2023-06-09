/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 7 - Página 29

Fer V - Jalmendra99@gmail.com

 */
package Ej07Persona;

import java.util.Scanner;

public class Persona {

    // Atributos
    private String nombre;
    private int edad;
    private char sexo; // 'H' hombre, 'M' mujer, 'O' otro
    private double peso;
    private double altura;

    // Constructores
    public Persona() {
    }

    public Persona(String nombre, int edad, char Sexo, double peso, double altura) {
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = Sexo;
        this.peso = peso;
        this.altura = altura;
    }

    // Getters y setters
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char Sexo) {
        this.sexo = Sexo;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    // Métodos
    public void crearPersona() {
        Scanner leer = new Scanner(System.in);

        System.out.print("Ingrese el nombre: ");
        nombre = leer.nextLine();

        System.out.print("Ingrese la edad: ");
        edad = leer.nextInt();

        sexo = ' ';
        while (sexo != 'H' && sexo != 'M' && sexo != 'O') {
            System.out.print("Ingrese el sexo (H/M/O): ");
            sexo = leer.next().charAt(0);
            leer.nextLine(); // Para eliminar el enter ingresado.

            if (sexo != 'H' && sexo != 'M' && sexo != 'O') {
                System.out.println("La opción ingresada es inválida. Use H/M/O.");
            }
        }

        System.out.print("Ingrese el peso en Kg: ");
        peso = leer.nextDouble();

        System.out.print("Ingrese la altura en metros: ");
        altura = leer.nextDouble();
    }
    
    public int calcularIMC() {
        
        double IMC;
        
        IMC = peso / (Math.pow(altura, 2));
        
        if (IMC < 20) { // Underweight
            return -1;
        }
        if (IMC > 25) { // Overweight
            return 1; 
        }
        // Normal
        return 0;        
    }
    
    public boolean esMayorDeEdad() {
        return (edad > 18); // ¿Mayoría de edad a los 18 o a los 21?
    }

}
