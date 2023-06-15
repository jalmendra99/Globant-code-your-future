/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 2 - Página 27

Declarar una clase llamada Circunferencia que tenga como atributo privado 
el radio de tipo real. A continuación, se deben crear los siguientes métodos:
a) Método constructor que inicialice el radio pasado como parámetro. 
b) Métodos get y set para el atributo radio de la clase Circunferencia. 
c) Método para crearCircunferencia(): que le pide el radio y lo guarda 
    en el atributo del objeto. 
d) Método area(): para calcular el área de la circunferencia (𝐀𝐫𝐞𝐚=𝛑∗𝐫𝐚𝐝𝐢𝐨𝟐)
e) Método perimetro(): para calcular el perímetro (𝐏𝐞𝐫𝐢𝐦𝐞𝐭𝐫𝐨=𝟐∗𝛑∗𝐫𝐚𝐝𝐢𝐨)

Fer V - Jalmendra99@gmail.com

 */
package Ej02Circunferencia.servicio;

import Ej02Circunferencia.entidad.Circunferencia;
import java.util.Scanner;

public class CircunferenciaService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public Circunferencia crearCircunferencia () {

        // Crea una circunferencia vacía
        Circunferencia circu = new Circunferencia();

        // Se solicita el radio al usuario
        System.out.println("Ingrese un radio");
        double radio = leer.nextDouble();
        
        circu.setRadio(radio);
        
        return circu;
    }
    
    public void mostrarRadioYPerimetro(Circunferencia c) {
        // Muestra área y perímetro
        System.out.println("El área del círculo es: " + c.getArea());
        System.out.println("Y el perímetro es: " + c.getPerimetro());
    }

}
