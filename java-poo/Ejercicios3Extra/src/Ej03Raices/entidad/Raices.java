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
* Método tieneRaices(): devuelve un booleano indicando si tiene dos cantidadRaices, 
    para que esto ocurra, el discriminante debe ser mayor o igual que 0.
* Método tieneRaiz(): devuelve un booleano indicando si tiene una única solución, 
    para que esto ocurra, el discriminante debe ser igual que 0.
* Método obtenerRaices(): llama a tieneRaíces() y si devolvió true, imprime las 2 posibles cantidadRaices.
* Método obtenerRaiz(): llama a tieneRaiz() y si devolvió true imprime una única raíz. 
    Es en el caso en que se tenga una única solución posible.
* Método calcular(): esté método llamará tieneRaices() y a tieneRaíz(), 
    y mostrará por pantalla las posibles cantidadRaices que tiene nuestra ecuación 
    con los métodos obtenerRaices() o obtenerRaiz(), según lo que devuelvan 
    nuestros métodos y en caso de no existir solución, se mostrará un mensaje.

Nota: Formula ecuación 2o grado: (-b±√((b^2)-(4*a*c)))/(2*a) Solo varia el signo delante de -b

--

Info: https://es.wikipedia.org/wiki/Ecuaci%C3%B3n_de_segundo_grado


Fer V - Jalmendra99@gmail.com

 */
package Ej03Raices.entidad;

public class Raices {

    // Atributos
    double a = 0;       // Coeficientes
    double b = 0;
    double c = 0;
    int cantidadRaices;     // 0, 1, o 2
    double raiz1, raiz2;

    // Constructor
    public Raices() {
    }

    public Raices(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
        calcular();
    }

    // Getters y setters
    // No hay setters para cantidadRaices, ni para raiz1 y raiz2 porque
    // se calculan automáticamente en el constructor o en los setters de a, b, c.
    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
        if (b != 0 && c != 0) {
            calcular();
        }
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
        if (a != 0 && c != 0) {
            calcular();
        }
    }

    public double getC() {
        return c;
    }

    public void setC(double c) {
        this.c = c;
        if (a != 0 && b != 0) {
            calcular();
        }
    }

    public int getCantidadRaices() {
        return cantidadRaices;
    }

    public double getRaiz1() {
        return raiz1;
    }

    public double getRaiz2() {
        return raiz2;
    }

    // Métodos
    public double getDiscriminante() {
        return Math.pow(b, 2) - (4 * a * c);
    }

    public boolean tieneRaices() { // dos raíces reales distintas
        return getDiscriminante() > 0;
    }

    public boolean tieneRaiz() { // una raíz 
        return getDiscriminante() == 0;
    }

    public void obtenerRaices() {
        if (tieneRaices()) {
            raiz1 = (-b + Math.sqrt(getDiscriminante())) / (2 * a);
            raiz2 = (-b - Math.sqrt(getDiscriminante())) / (2 * a);
        }
    }

    public void obtenerRaiz() {
        if (tieneRaiz()) {
            raiz1 = -b / (2 * a);
        }
    }

    public void calcular() {
        if (tieneRaices()) {
            cantidadRaices = 2;
            obtenerRaices();
        } else if (tieneRaiz()) {
            cantidadRaices = 1;
            obtenerRaiz();
        } else {
            cantidadRaices = 0;
        }

    }

}
