/*
Java-POO - Ejercicios extra.
Ejercicio 3 - Página 33

Vamos a realizar una clase llamada Raices, donde representaremos los valores 
de una ecuación de 2o grado. Tendremos los 3 coeficientes como atributos, 
llamémosles a, b y c. 
Hay que insertar estos 3 valores para construir el objeto a través de un método constructor. 
Luego, las operaciones que se podrán realizar son las siguientes:
* Método getDiscriminante(): devuelve el valor del discriminante (double). 
    El discriminante tiene la siguiente formula: (b^2)-4*a*c
* Método tieneRaices(): devuelve un booleano indicando si tiene dos soluciones, 
    para que esto ocurra, el discriminante debe ser mayor o igual que 0.
* Método tieneRaiz(): devuelve un booleano indicando si tiene una única solución, 
    para que esto ocurra, el discriminante debe ser igual que 0.
* Método obtenerRaices(): llama a tieneRaíces() y si devolvió true, imprime las 2 posibles soluciones.
* Método obtenerRaiz(): llama a tieneRaiz() y si devolvió true imprime una única raíz. 
    Es en el caso en que se tenga una única solución posible.
* Método calcular(): esté método llamará tieneRaices() y a tieneRaíz(), 
    y mostrará por pantalla las posibles soluciones que tiene nuestra ecuación 
    con los métodos obtenerRaices() o obtenerRaiz(), según lo que devuelvan 
    nuestros métodos y en caso de no existir solución, se mostrará un mensaje.

Nota: Formula ecuación 2o grado: (-b±√((b^2)-(4*a*c)))/(2*a) Solo varia el signo delante de -b

--

Info: https://es.wikipedia.org/wiki/Ecuaci%C3%B3n_de_segundo_grado


Fer V - Jalmendra99@gmail.com

 */
package Ej03Raices;

public class Raices {

    // Atributos
    double a, b, c;

    // Constructor
    public Raices(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    // Métodos
    public double getDiscriminante() {
        return Math.pow(b, 2) - (4 * a * c);
    }

    public boolean tieneRaices() { // dos raíces reales distintas
        return getDiscriminante() > 0;
    }

    public boolean tieneRaiz() { // una raíz real
        return getDiscriminante() == 0;
    }

    public void obtenerRaices() {
        if (tieneRaices()) {
            double r1 = (-b + Math.sqrt(getDiscriminante())) / (2 * a);
            double r2 = (-b - Math.sqrt(getDiscriminante())) / (2 * a);
            System.out.printf("Raíz 1 = %.2f\n", r1);
            System.out.printf("Raíz 2 = %.2f\n", r2);
        }
    }

    public void obtenerRaiz() {
        if (tieneRaiz()) {
            double r = -b / (2 * a);
            System.out.printf("Raíz = %.2f\n", r);
        }
    }

    public void calcular() {
        if (tieneRaices()) {
            obtenerRaices();
        } else if (tieneRaiz()) {
            obtenerRaiz();
        } else {
            System.out.println("La ecuación de segundo grado no tiene solución.");
        }

    }
}
