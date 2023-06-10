/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 14 - Página 32

Una tienda que vende teléfonos móviles quiere tener registro de cada producto 
que posee en un sistema computacional. Para ello, crearemos un programa 
donde se pueda almacenar cada producto con su información. 
Crear una entidad Movil con los atributos marca, precio, modelo, memoriaRam, 
almacenamiento y codigo. El atributo código será un arreglo numérico 
de dimensión 7 (siete) donde cada subíndice alojará un número correspondiente al código. 
A continuación, se implementarán los siguientes métodos:
* Un constructor por defecto.
* Un constructor con todos los atributos como parámetro.
* Métodos getters y setters de cada atributo.
* Método cargarCelular(): se solicita al usuario que ingrese los datos necesarios 
    para instanciar un objeto Celular y poder cargarlo en nuestro programa.
* Método ingresarCodigo(): este método permitirá ingresar el código completo 
    de siete números de un celular. Para ello, puede utilizarse un bucle repetitivo


Fer V - Jalmendra99@gmail.com

 */
package Ej14Movil;

import java.util.Scanner;

public class Movil {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    // Atributos
    private String marca;
    private double precio;
    private String modelo;
    private int memoriaRam;
    private int almacenamiento;
    private int[] codigo = new int[7];

    // Constructores
    public Movil() {
    }

    public Movil(String marca, double precio, String modelo, int memoriaRam, int almacenamiento) {
        this.marca = marca;
        this.precio = precio;
        this.modelo = modelo;
        this.memoriaRam = memoriaRam;
        this.almacenamiento = almacenamiento;
    }

    // Getters y setters
    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getMemoriaRam() {
        return memoriaRam;
    }

    public void setMemoriaRam(int memoriaRam) {
        this.memoriaRam = memoriaRam;
    }

    public int getAlmacenamiento() {
        return almacenamiento;
    }

    public void setAlmacenamiento(int almacenamiento) {
        this.almacenamiento = almacenamiento;
    }

    public int[] getCodigo() {
        return codigo;
    }

    public void setCodigo(int[] codigo) {
        this.codigo = codigo;
    }

    // Métodos
    public void cargarCelular() {
        System.out.print("Ingrese la marca: ");
        marca = leer.nextLine();

        System.out.print("Ingrese el precio: ");
        precio = leer.nextDouble();
        leer.nextLine(); // elimina el \n colgado...

        System.out.print("Ingrese el modelo: ");
        modelo = leer.nextLine();

        System.out.print("Ingrese la cantidad de GB de memoria RAM: ");
        memoriaRam = leer.nextInt();

        System.out.print("Ingrese la cantidad de GB de almacenamiento: ");
        almacenamiento = leer.nextInt();

        ingresarCodigo();
    }

    public void ingresarCodigo() {
        for (int i = 0; i < codigo.length; i++) {
            System.out.print("Ingrese el código #" + (i + 1) + ": ");
            codigo[i] = leer.nextInt();
        }
    }

    // agregado
    public void mostrarMovil() {
        System.out.println("Marca: " + marca);
        System.out.printf("Precio: %.2f\n", precio);
        System.out.println("Modelo: " + modelo);
        System.out.println("RAM: " + memoriaRam + " GB");
        System.out.println("Almacenamiento: " + almacenamiento + " GB");
        for (int i = 0; i < codigo.length; i++) {
            System.out.println("Código #" + (i + 1) + ": " + codigo[i]);
        }
    }

}
