package jpa1libreria;

import jpa1libreria.servicios.AutorServicio;

public class JPA1Libreria {

    public static void main(String[] args) {

        AutorServicio as = new AutorServicio();
        
        as.insertarAutor(as.crearAutorDesdeTeclado());
        
        
        

    }

}
