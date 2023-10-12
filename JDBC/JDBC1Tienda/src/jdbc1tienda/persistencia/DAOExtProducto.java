/**
 * Java - JDBC - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 13
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jdbc1tienda.persistencia;

import jdbc1tienda.entidades.Producto;

public final class DAOExtProducto extends DAO {

    public void guardarFabricante(Producto p) throws Exception {
        try {
            if (p == null) {
                throw new Exception("Debe indicar un producto.");
            }
            String sql = "INSERT INTO producto (codigo, nombre, precio, codigo_fabricante)"
                    + "VALUES ( '" + p.getCodigo() + "', '" + p.getNombre() + "', '"
                    + p.getPrecio() + "', '" + p.getCodigoFabricante() + "');";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            throw e;
        }
    }

    public void modificarFabricante(Producto p) throws Exception {
        try {
            if (p == null) {
                throw new Exception("Debe indicar un producto.");
            }
            String sql = "UPDATE producto SET (codigo, nombre, precio, codigo_fabricante)"
                    + "VALUES ( '" + p.getCodigo() + "', '" + p.getNombre() + "', '"
                    + p.getPrecio() + "', '" + p.getCodigoFabricante() + "');";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            throw e;
        }
    }

    public void eliminarFabricante(Producto p) throws Exception {
        try {
            if (p == null) {
                throw new Exception("Debe indicar un producto.");
            }
            String sql = "DELETE FROM producto WHERE codigo = '" + p.getCodigo()
                    + "' AND nombre = '" + p.getNombre() + "' AND precio = '"
                    + p.getPrecio() + "' AND codigo_fabricante = '" + p.getCodigoFabricante() + "';";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            throw e;
        }
    }
}
