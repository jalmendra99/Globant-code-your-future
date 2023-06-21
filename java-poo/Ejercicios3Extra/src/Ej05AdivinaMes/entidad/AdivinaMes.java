/*
Java-POO - Ejercicios extra.
Ejercicio 5 - Página 35

Fer V - Jalmendra99@gmail.com

 */
package Ej05AdivinaMes.entidad;

public class AdivinaMes {

    // Atributos
    private final String[] mes = new String[]{"enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"};
    private final String mesSecreto;

    // Constructor
    public AdivinaMes() {
        mesSecreto = mes[(int) (Math.random() * 12)]; // elije un número aleatorio entre 0 y 11
    }

    // Getters y setters
    public String getMesSecreto() {
        return mesSecreto;
    }

    // Métodos
    public boolean mesSecretoEs(String mes) {
        // Corner case mes = "seTiembre" instead of "sePtiembre".
        if (mes.equals("setiembre")) {
            mes = "septiembre";
        }
        return mes.equals(mesSecreto);
    }

}
