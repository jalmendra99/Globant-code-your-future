/*
Java - Excepciones - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej01Persona.entidad;

public class Persona {

    // Atributos
    private String nombre;
    private int edad;
    private char sexo;      // 'H' hombre, 'M' mujer, 'O' otro
    private double peso;
    private double altura;
    private double imc;     // Se calcula automáticamente cuando estén cargadas peso y altura.

    // Constructores
    public Persona() {
    }

    public Persona(String nombre, int edad, char Sexo, double peso, double altura) {
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = Sexo;
        this.peso = peso;
        this.altura = altura;
        calcularImc();
    }

    // Getters y setters
    // No hay setter de IMC porque se calcula automáticamente en el constructor
    // y/o en los setters de peso/altura.
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
        if (altura != 0) {
            calcularImc();
        }
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
        if (peso != 0) {
            calcularImc();
        }
    }

    public double getImc() {
        return imc;
    }

    // Métodos
    private void calcularImc() {
        imc = peso / (Math.pow(altura, 2));
    }

    public boolean esMayorDeEdad() {
        return (edad > 18);
    }

}
