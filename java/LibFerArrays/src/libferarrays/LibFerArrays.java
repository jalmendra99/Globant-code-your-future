/*
Java - Ejercicios de aprendizaje
Librería creada con funciones comunes para manipular arreglos y otras utilidades.

Fer V - Jalmendra99@gmail.com


-------------------------------------------------------------------------
COPIAR LO SIGUIENTE EN ARVHIVOS FUENTE QUE INCLUYAN ESTE PAQUETE
-------------------------------------------------------------------------
Este fuente usa código del paquete.clase libferarrays.LibFerArrays
Para importarlo en este proyecto con NetBeans:
- ir a "projects".
- Seleccionar y expandír el proyecto actual.
- Seleccionar y expandír "librerías" o "libraries".
- click derecho allí y seleccionar "agregar JAR/carpeta" o "Add Jar/folder".
- buscar el directorio / carpeta "LibFerArrays" -> "dist".
- y dentro del mismo seleccionar el archivo "LibFerArrays.jar".
- Finalmente agregar al código del paquete del proyecto actual la línea:
    import libferarrays.LibFerArrays;
- Para utilizar cualquiera de las funciones de libferarrays:
    escribir LibFerArrays. y presionar <CTRL> + <BARRA ESPACIADORA>

Nota:
- Si en algún momento se realizan cambios al proyecto LibFerArrays.
- hay que guardarlos a mano o compilarlo a mano yendo al menú "Ejecutar" o "Run".
- y eligiendo la opción "Construír proyecto" o "Build proyect".

Fuentes: https://www.youtube.com/watch?v=3oOmd9R1LMQ
-------------------------------------------------------------------------

 */
package libferarrays;

public class LibFerArrays {

    // -----------------------------------------------------
    // Función cuentaDigitos
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
        double temporal = 0;

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
    // Función imprimeVectorEnteros
    // Imprime en pantalla un vector de enteros "vector" de tamaño "n".
    public static void imprimeVectorEnteros(int[] vector, int n) {

        System.out.print("[");
        for (int i = 0; i < n; i++) {
            System.out.print(vector[i]);
            if (i != n - 1) {
                System.out.print(" ");
            }
        }
        System.out.println("]");
    }

    // -----------------------------------------------------
    // Función AzarPorCantDigitos
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
        // ((max - min) + 1) + min);
        // https://stackoverflow.com/questions/7961788/math-random-explanation
        // ------------------------------------------------------------------------
        // ------------------------------------------------------------------------
        return num;
    }

    // -----------------------------------------------------
    // Función muestraMatrizEnteros(int[][] matriz, int m, int n)
    // Imprime por pantalla una "matriz" de tamaño "m" x "n".
    // Ordena los espaciados de las columnas para que en pantalla se muestre "prolija".
    public static void imprimeMatrizEnteros(int[][] matriz, int m, int n) {

        int mayor, num, espacios;

        // Para cada fila y columna de la matriz...
        for (int fila = 0; fila < m; fila++) {
            for (int columna = 0; columna < n; columna++) {

                // Se asigna el número de la posición actual de la matriz en "num".
                num = matriz[fila][columna];

                // Se calcula el número mayor que haya en la matriz...
                // para usar como referente máximo al imprimir todos los
                // demás valores.
                mayor = calculaMayor(matriz, m, n);

                // ...para calcular el espaciado necesario que hay que escribir
                // entre columnas para que la matriz quede prolija.
                espacios = cuentaDigitos(mayor);

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
                    espacios--;
                }
                
                for (int i = 0; i < (espacios - cuentaDigitos(num)); i++) {
                    System.out.print(" ");
                }

                // Se escribe el número actual.
                System.out.print(num);

                // Mientras la columna que se está imprimiendo no sea la última, se escribe un espacio 
                // para separar el valor de la columna actual, del de la siguiente.
                if (columna != m - 1) {
                    System.out.print(" ");
                }
            }
            // Imprime un salto de línea para pasar a imprimir la siguiente 
            // línea de la matriz en pantalla.
            System.out.println("");
        }
    }

    // -----------------------------------------------------
    // Función calculaMayor(int[][] matriz, int m, int n)
    // Devuelve el mayor de todos los elementos de una "matriz" de tamaño "m" x "n".
    // Usada por la función muestraMatrizEnteros(int[][] matriz, int m, int n)
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

}
