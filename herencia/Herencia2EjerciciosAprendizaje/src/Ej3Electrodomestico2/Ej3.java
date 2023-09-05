/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 15

Fer V - Jalmendra99@gmail.com

Siguiendo el ejercicio anterior, en el main vamos a crear un ArrayList de Electrodomésticos 
para guardar 4 electrodomésticos, ya sean lavadoras o televisores, con valores ya asignados.
Luego, recorrer este array y ejecutar el método precioFinal() en cada electrodoméstico. 
Se deberá también mostrar el precio de cada tipo de objeto, es decir, 
el precio de todos los televisores y el de las lavadoras. 
Una vez hecho eso, también deberemos mostrar, la suma del precio de todos los Electrodomésticos. 
Por ejemplo, si tenemos una lavadora con un precio de 2000 y un televisor de 5000, 
el resultado final será de 7000 (2000+5000) para electrodomésticos, 
2000 para lavadora y 5000 para televisor.

 */
package Ej3Electrodomestico2;

import Ej3Electrodomestico2.entidades.Electrodomestico;
import Ej3Electrodomestico2.entidades.Lavadora;
import Ej3Electrodomestico2.entidades.Televisor;
import java.util.ArrayList;

public class Ej3 {

    public static void main(String[] args) {

        ArrayList<Electrodomestico> lista = new ArrayList<Electrodomestico>();

        // campos: double carga, double precio, String color, char consumoEnergetico, double peso
        lista.add(new Lavadora(50d, 500d, "Rojo", 'b', 30d));
        lista.add(new Lavadora(30d, 700d, "Verde", 'a', 60d));
        // campos: int resolucion, boolean sintonizadorTDT, double precio, String color, char consumoEnergetico, double peso
        lista.add(new Televisor(50, true, 800d, "Azul", 'c', 40d));
        lista.add(new Televisor(70, false, 600d, "Negro", 'b', 30d));
        
        double sumatoriaPreciosLavadoras = 0;
        double sumatoriaPreciosTelevisores = 0;
        double precio;
        
        for (Electrodomestico electro : lista) {
            precio = electro.getPrecio();
            System.out.printf("El precio de este electrodoméstico es de $ %.2f\n", precio);
            System.out.print("Y el electrodoméstico es un");
            if (electro instanceof Lavadora) {
                sumatoriaPreciosLavadoras += precio;
                System.out.println("a Lavadora.");
            } else if (electro instanceof Televisor) {
                sumatoriaPreciosTelevisores += precio;
                System.out.println(" Televisor.");
            } else {
                System.out.println("<NADA!>\nError. electro no es ni Lavadora ni Televisor!!");
            }
            
            
        }
            double totalTotal = sumatoriaPreciosLavadoras + sumatoriaPreciosTelevisores;
            System.out.printf("\nEl precio de todas las lavadoras es de $ %.2f\n", sumatoriaPreciosLavadoras);
            System.out.printf("\nEl precio de todos los televisores es de $ %.2f\n", sumatoriaPreciosTelevisores);
            System.out.printf("\nEl precio de todos los electrodomésticos es de $ %.2f\n", totalTotal);
    }

}
