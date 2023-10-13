/**
 * Java - JDBC - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 13
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jdbc1tienda.persistencia;

import jdbc1tienda.entidades.Fabricante;

public final class DAOExtFabricante extends DAO {

    // g) Ingresar un fabricante a la base de datos 
    public void guardarFabricante(Fabricante f) throws Exception {
        try {
            if (f == null) {
                throw new Exception("Debe indicar un fabricante.");
            }
            String sql = "INSERT INTO fabricante (codigo, nombre)"
                    + "VALUES ( '" + f.getCodigo() + "', '" + f.getNombre() + "');";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en guardarFabricante.");
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
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en modificarFabricante.");
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
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en eliminarFabricante.");
        }
    }

    // g) Ingresar un fabricante a la base de datos  
    // Busca el próximo código disponible (esto debería hacerse automático en la base de datos, no?
    public int proximoCodigoFabricante() throws Exception {
        try {

            String sql = "SELECT max(codigo) + 1 FROM fabricante;";

            consultarBase(sql);

            desconectarBase();

            return resultado.getInt(1);

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en proximoCodigoFabricante.");
        }
    }

}
