/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 4 - Página 28

Crear una clase Rectángulo que modele rectángulos por medio de un atributo privado base 
y un atributo privado altura. La clase incluirá un método para crear el rectángulo 
con los datos del Rectángulo dados por el usuario. También incluirá un método para calcular 
la superficie del rectángulo y un método para calcular el perímetro del rectángulo. 
Por último, tendremos un método que dibujará el rectángulo mediante asteriscos 
usando la base y la altura. Se deberán además definir los métodos getters, setters 
y constructores correspondientes.
Superficie = base * altura / Perímetro = (base + altura) * 2.

Fer V - Jalmendra99@gmail.com

 */
package Ej04Rectangulo;

import Ej04Rectangulo.entidad.Rectangulo;
import Ej04Rectangulo.servicio.RectanguloService;

public class Ej04 {

    public static void main(String[] args) {

        // Crea una clase RectánguloService para acceder a objetos Rectángulo.
        RectanguloService rs = new RectanguloService();

        // Crea un rectángulo y solicita al usuario que llene sus atributos.
        Rectangulo r = rs.crearRectangulo();

        // Calcula y muestra la superficie del Rectángulo
        rs.mostrarSuperficieYPerimetro(r);

        // Dibuja el Rectángulo
        rs.dibujaRectangulo(r);
    }
}
