/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 4 - Página 15

Fer V - Jalmendra99@gmail.com

Se plantea desarrollar un programa que nos permita calcular el área y el perímetro 
de formas geométricas, en este caso un círculo y un rectángulo. 
Ya que este cálculo se va a repetir en las dos formas geométricas, vamos a crear una Interfaz, 
llamada calculosFormas que tendrá, los dos métodos para calcular el área, 
el perímetro y el valor de PI como constante.
Desarrollar el ejercicio para que las formas implementen los métodos de la interfaz 
y se calcule el área y el perímetro de los dos. En el main se crearán las formas 
y se mostrará el resultado final.

Área circulo: PI * radio ^ 2 / Perímetro circulo: PI * diámetro.

Área rectángulo: base * altura / Perímetro rectángulo: (base + altura) * 2.

 */
package Ej4AreaYPerimetro;

import Ej4AreaYPerimetro.entidades.Circulo;
import Ej4AreaYPerimetro.entidades.Rectangulo;

public class Ej4 {

    public static void main(String[] args) {

        Circulo cir = new Circulo();
        Rectangulo rec = new Rectangulo();
        
        double radio = 5;
        double diametro = radio * 2;
        double base = 2;
        double altura = 3;
        
        System.out.printf("El área de un círculo de radio %.2f es %.2f\n", radio, cir.area(radio, 0));
        System.out.printf("El perímetro de un círculo de diámetro %.2f es %.2f\n", diametro, cir.perimetro(diametro, 0));
        System.out.printf("El área de un rectángulo de base %.2f y altura %.2f es %.2f\n", base, altura, rec.area(base, altura));
        System.out.printf("El árperímetroea de un rectángulo de base %.2f y altura %.2f es %.2f\n", base, altura, rec.perimetro(base, altura));

    }

}
