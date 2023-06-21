/*
Java-POO - Ejercicios extra.
Ejercicio 4 - Página 34

Fer V - Jalmendra99@gmail.com

--

Info: https://www.baeldung.com/java-initialize-array

 */
package Ej04DniNif.entidad;

public class Nif {

    // Atributos
    private long dni;
    private char letra;
    private final char[] tabla = new char[]{'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'};

    // Constructores
    public Nif() {
    }

    public Nif(long dni, char letra) {
        this.dni = dni;
        this.letra = letra;
    }

    // Getters y setters
    public long getDni() {
        return dni;
    }

    public void setDni(long dni) {
        this.dni = dni;
    }

    public char getLetra() {
        return letra;
    }

    public void setLetra(char letra) {
        this.letra = letra;
    }

    public char[] getTabla() {
        return tabla;
    }
}
