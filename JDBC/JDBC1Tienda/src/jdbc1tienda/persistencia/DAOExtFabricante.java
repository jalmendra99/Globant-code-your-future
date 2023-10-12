/**
 * Java - JDBC - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 13
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jdbc1tienda.persistencia;

import jdbc1tienda.entidades.Fabricante;

public final class DAOExtFabricante extends DAO {
    
    public void guardarFabricante(Fabricante f) throws Exception {
        try {
            if (f == null) {
                throw new Exception("Debe indicar un fabricante.");
            }
            String sql = "INSERT INTO fabricante (codigo, nombre)"
                    + "VALUES ( '" + f.getCodigo() + "', '" + f.getNombre() + "');";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            throw e;
        }
    }
    
    public void modificarFabricante(Fabricante f) throws Exception {
        try {
            if (f == null) {
                throw new Exception("Debe indicar un fabricante.");
            }
            String sql = "UPDATE fabricante SET (codigo, nombre)"
                    + "VALUES ( '" + f.getCodigo() + "', '" + f.getNombre() + "');";
                    
            insertarModificarEliminar(sql);
            
        } catch (Exception e) {
            throw e;
        }
    }

    public void eliminarFabricante(Fabricante f) throws Exception {
        try {
            if (f == null) {
                throw new Exception("Debe indicar un fabricante.");
            }
            String sql = "DELETE FROM fabricante WHERE "
                    + "codigo = " + f.getCodigo() + " AND nombre = '" + f.getNombre() + "';";
                    
            insertarModificarEliminar(sql);
            
        } catch (Exception e) {
            throw e;
        }
    }
    
    public void consultaGenerica() {
        
        
        
    }
    
}
