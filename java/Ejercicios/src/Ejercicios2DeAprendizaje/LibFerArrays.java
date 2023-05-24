/*
Java - Ejercicios de aprendizaje
Clase creada con funciones (¿métodos?) comunes para manipular arreglos y otras utilidades.

Fer V - Jalmendra99@gmail.com

 
 */
package Ejercicios2DeAprendizaje;

import com.sun.org.apache.xpath.internal.operations.Minus;

public class LibFerArrays {

    // -----------------------------------------------------
    // Retorna la cantidad de dígitos de un entero.
    // -----------
    // Código traído de PSeInt para referencia:
    /* 
        definir num, digitos como entero
        definir temporal como real
        temporal = num	
	mientras trunc(temporal / 10) > 0 hacer
            digitos = digitos + 1
            temporal = temporal / 10
	FinMientras	
     */
    public static int cuentaDigitos(int entero) {

        int digitos = 1;
        double temporal;

        temporal = entero;
        while (Math.floor(temporal / 10) > 0) {
            digitos++;
            temporal /= 10;
        }

//        // INFO.
//        System.out.println("entero: " + entero);
//        System.out.println("digitos: " + digitos);
        return digitos;
    }

    // -----------------------------------------------------
    // Imprime en pantalla un vector de enteros "vector" de tamaño "n".
    public static void imprimeVectorEnteros(int[] vector, int n) {

        //////System.out.print("[");
        for (int i = 0; i < n; i++) {
            System.out.print(vector[i]);
            if (i != n - 1) {
                System.out.print(" ");
            }
        }
        System.out.println("");
        //////System.out.println("]");
    }

    // -----------------------------------------------------
    // Imprime en pantalla un vector de floats "vector" de tamaño "n".
    public static void imprimeVectorFloat(float[] vector, int n) {

        //////System.out.print("[");
        for (int i = 0; i < n; i++) {
            System.out.print(vector[i]);
            if (i != n - 1) {
                System.out.print(" ");
            }
        }
        System.out.println("");
        //////System.out.println("]");
    }

    // -----------------------------------------------------
    // Retorna verdadero si "vector1" y "vector2" tienen los mismos valores
    // asignados en las mismas posiciones. Falso sino.
    public static boolean comparaVectoresEnteros(int[] vector1, int[] vector2, int tamanio) {

        // Para todos los elementos del "vector1",
        // se comparan sus equivalentes contra el "vector2".
        // Si aparece algun elemento distinto, la funcion retorna falso.
        for (int i = 0; i < tamanio; i++) {
            if (vector1[i] != vector2[i]) {
                return false;
            }
        }

        // Si se llegó hasta acá, todos los valores en los vectores son iguales.
        return true;
    }

    // -----------------------------------------------------
    // Llena el "vector" de "tamanio" con números al azar
    // que estén dentro del rango (min, max) inclusive.
    public static void llenaVectorEnterosAzar(int[] vector, int tamanio, int min, int max) {

        // Se llenan todos los elementos del vector.        
        for (int i = 0; i < tamanio; i++) {
            vector[i] = (int) (Math.random() * (max - min) + 1) + min;
        }
        // Para generar un número aleatorio entre min y max...
        // (Math.random() * (max - min) + 1) + min;
        // https://stackoverflow.com/questions/7961788/math-random-explanation
    }

    // -----------------------------------------------------
    // Devuelve un entero positivo al azar que sea de una cantidad
    // de dígitos entre "digitosMin" y "digitosMax"
    // con misma probabilidad para cualquier cantidad de dígitos
    // dentro de ese rango.  
    // Ej: AzarPorCantDigitos(1,2) debería devolver números entre 0 y 99.
    //     AzarPorCantDigitos(3,5) debería devolver números entre 100 y 99999.
    public static int AzarPorCantDigitos(int digitosMin, int digitosMax) {

        int num, numDigitosAleatorio, maximo, minimo;

        // Para generar un número aleatorio entre 0 y 99999...
        // Si se usa directamente "(math.random() * 10.000)"
        // la probabilidad de generar un número de "n" dígitos aumenta 
        // cuanto mayor sea el valor de "n".
        // Por lo que va a haber muchísimos números de 5 dígitos
        // menos de 4, pocos de 3, casi ninguno de 2 y casi imposible de 1.        
        // 
        // Para igualar la probabilidad de recibír un número aleatorio de
        // 1, 2, 3, 4 o 5 dígitos o los que sea, 
        // primero se elije un número aleatorio
        // entre 1 y 5 (o el rango que sea) y luego se genera un número aleatorio
        // con <esa> cantidad de dígitos.     
        // Elije un número al azar entre digitosMin y digitosMax.
        numDigitosAleatorio = (int) ((Math.random() * digitosMax) + digitosMin);

        // Genera un número aleatorio con esa cantidad de dígitos.
        maximo = (int) Math.pow(10, numDigitosAleatorio);
        minimo = (int) Math.pow(10, numDigitosAleatorio - 1);
        num = (int) ((Math.random() * (maximo - minimo) + 1) + minimo);

        // Notas:
        // 0..9          <-- numDigitosAleatorio = 1
        // 10..99        <-- numDigitosAleatorio = 2
        // 100..999      <-- numDigitosAleatorio = 3
        // 1000...9999   <-- numDigitosAleatorio = 4
        // 10000..99999  <-- numDigitosAleatorio = 5
        // Para generar un número aleatorio entre min y max...
        // (Math.random() * (max - min) + 1) + min;
        // https://stackoverflow.com/questions/7961788/math-random-explanation
        // ------------------------------------------------------------------------
        // ------------------------------------------------------------------------
        return num;
    }

    // -----------------------------------------------------
    // Imprime por pantalla una "matriz" de tamaño "m" x "n".
    // Ordena los espaciados de las columnas para que en pantalla se muestre "prolija".
    public static void imprimeMatrizEnteros(int[][] matriz, int m, int n) {

        int mayor, num, espacios, espaciado;

        // Se calcula el número mayor que haya en la matriz...
        // para usar como referente máximo al imprimir todos los
        // demás valores.
        mayor = calculaMayor(matriz, m, n);

        // ...para calcular el espaciado necesario que hay que escribir
        // entre columnas para que la matriz quede prolija.
        espacios = cuentaDigitos(mayor);

        // Para cada fila y columna de la matriz...
        for (int fila = 0; fila < m; fila++) {
            for (int columna = 0; columna < n; columna++) {

                // Se resetea el espaciado.
                espaciado = espacios;

                // Se asigna el número de la posición actual de la matriz en "num".
                num = matriz[fila][columna];

                // Se calcula la cantidad de dígitos del número actual "num", y dependiendo
                // de la misma, se agregan o quitan espacios antes de escribirlo.
                // ej: 
                //     num =   1 -> se imprime -> "  1" (o sea, dos espacios y el número de un dígito).
                //     num =  10 -> se imprime -> " 10" (o sea, un espacio y el número de dos dígitos).
                //     num = 100 -> se imprime -> "100" (o sea, ningún espacio y el número de tres dígitos).
                //  etc.
                // Se escribe la cantidad de espacios antes del número actual.
                // quita un espacio si el número actual es negativo
                if (num < 0) {
                    espaciado--;
                }

                for (int i = 0; i < (espaciado - cuentaDigitos(num)); i++) {
                    System.out.print(" ");
                }

                // Se escribe el número actual.
                System.out.print(num);

                // Mientras la columna que se está imprimiendo no sea la última, se escribe un espacio 
                // para separar el valor de la columna actual, del de la siguiente.
                if (columna != n - 1) {
                    System.out.print(" ");
                }
            }
            // Imprime un salto de línea para pasar a imprimir la siguiente 
            // línea de la matriz en pantalla.
            System.out.println("");
        }
    }

    // -----------------------------------------------------
    // Devuelve el mayor de todos los elementos de una "matriz" de tamaño "m" x "n".
    // Usada por muestraMatrizEnteros(int[][] matriz, int m, int n)
    public static int calculaMayor(int[][] matriz, int m, int n) {

        int mayor = 0;

        // Para todas las filas y columnas de una "matriz" de tamaño "n" x "m"...
        for (int fila = 0; fila < m - 1; fila++) {
            for (int columna = 0; columna < n - 1; columna++) {
                // Se inicializa mayor con el primer valor (matriz[0][0]).
                if (fila == 0 && columna == 0) {
                    mayor = matriz[fila][columna];
                }
                // Se comparan los subsiguientes valores de la matriz para 
                // determinar si hay otro que sea mayor al valor actualmente
                // guardado.
                if (matriz[fila][columna] > mayor) {
                    mayor = matriz[fila][columna];
                }
            }
        }
        return mayor;
    }

    // -----------------------------------------------------
    // Llena la "matriz" de tamaño filas x columnas con números al azar
    // que estén dentro del rango (min, max) inclusive.
    public static void llenaMatrizEnterosAzar(int[][] matriz, int filas, int columnas, int min, int max) {

        // Se llenan todos los elementos del vector.        
        for (int fila = 0; fila < filas; fila++) {
            for (int columna = 0; columna < columnas; columna++) {
                matriz[fila][columna] = (int) (Math.random() * (max - min) + 1) + min;
            }
        }
        // Para generar un número aleatorio entre min y max...
        // (Math.random() * (max - min) + 1) + min;
        // https://stackoverflow.com/questions/7961788/math-random-explanation
    }

}

/*
-------------------------------------------------------------------------
SI ESTA CLASE (LibFerArrays) se guarda en un paquete
distinto de EjerciciosDeAprendizaje y en un proyecto distinto
a Ejercicios, entonces se deben seguír las siguientes instrucciones
para importarlo como librería en los ejercicios 17, 18, 19, 20, 21
y cualquier otro que requiera del uso de los métodos de esta clase.

-------------------------------------------------------------------------
Para usar los métodos del paquete.clase libferarrays.LibFerArrays
importarlos en otro proyecto con NetBeans de la siguiente forma:
- ir a "projects".
- Seleccionar y expandír el proyecto donde se importará esta clase.
- Seleccionar y expandír "librerías" o "libraries".
- click derecho ahí y seleccionar "agregar JAR/carpeta" o "Add Jar/folder".
- buscar el directorio / carpeta "LibFerArrays" -> "dist".
- y dentro del mismo seleccionar el archivo "LibFerArrays.jar".
- Finalmente agregar al código del paquete del proyecto actual la línea:
    import libferarrays.LibFerArrays;
- Para utilizar cualquiera de las funciones (¿los métodos?) de libferarrays:
    escribir LibFerArrays. y presionar <CTRL> + <BARRA ESPACIADORA>

Nota:
- Si en algún momento se realizan cambios al proyecto LibFerArrays.
- hay que guardarlos a mano o compilarlo a mano yendo al menú "Ejecutar" o "Run".
- y eligiendo la opción "Construír proyecto" o "Build proyect".

Fuentes: https://www.youtube.com/watch?v=3oOmd9R1LMQ
-------------------------------------------------------------------------
 */
