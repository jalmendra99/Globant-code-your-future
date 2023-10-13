/**
 * Java - JDBC - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 13
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jdbc1tienda.servicios;

import java.util.Scanner;
import jdbc1tienda.entidades.Fabricante;
import jdbc1tienda.persistencia.DAOExtFabricante;

public class ServiceFabricante {


    // Atributos
    private DAOExtFabricante dao;
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    // Constructores
    public ServiceFabricante() {
    }
    
    // Métodos
    
    // g) Ingresar un fabricante a la base de datos 
    public void ingresarFabricante() throws Exception {   
        
        Fabricante f = new Fabricante();
        
        System.out.println("\nIngresando un fabricante..");
        f.setCodigo(dao.proximoCodigoFabricante());
                
        System.out.print("Ingrese el nombre: ");
        f.setNombre(leer.next());
        
        dao.guardarFabricante(f);
        System.out.println("Fabricante guardado: " + f);
    }
    
    
}
