/**
 * Java - JDBC - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 13
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jdbc1tienda.persistencia;

import java.util.ArrayList;
import jdbc1tienda.entidades.Producto;

public final class DAOExtProducto extends DAO {

    // f) Ingresar un producto a la base de datos. 
    public void guardarProducto(Producto p) throws Exception {
        try {
            if (p == null) {
                throw new Exception("Debe indicar un producto.");
            }
            String sql = "INSERT INTO producto (codigo, nombre, precio, codigo_fabricante)"
                    + "VALUES ( '" + p.getCodigo() + "', '" + p.getNombre() + "', '"
                    + p.getPrecio() + "', '" + p.getCodigoFabricante() + "');";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en guardarProducto.");
        }
    }

    // h) Editar un producto con datos a elección.
    public void modificarProductoPorCodigo(Producto p) throws Exception {
        try {
            if (p == null) {
                throw new Exception("Debe indicar un producto.");
            }
            String sql = "UPDATE producto SET (nombre, precio, codigo_fabricante)"
                    + "VALUES ( '" + p.getNombre() + "', '"
                    + p.getPrecio() + "', '" 
                    + p.getCodigoFabricante() + "') "
                    + "WHERE codigo = " + p.getCodigo() + ";";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en modificarProducto.");
        }
    }

    public void eliminarProducto(Producto p) throws Exception {
        try {
            if (p == null) {
                throw new Exception("Debe indicar un producto.");
            }
            String sql = "DELETE FROM producto WHERE codigo = '" + p.getCodigo()
                    + "' AND nombre = '" + p.getNombre() + "' AND precio = '"
                    + p.getPrecio() + "' AND codigo_fabricante = '" + p.getCodigoFabricante() + "';";

            insertarModificarEliminar(sql);

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en eliminarProducto.");
        }
    }

    // a) Lista el nombre de todos los productos que hay en la tabla producto. 
    public ArrayList<Producto> listarProductosNombre() throws Exception {
        try {

            String sql = "SELECT nombre FROM producto;";

            consultarBase(sql);

            Producto producto = null;
            ArrayList<Producto> productos = new ArrayList();

            while (resultado.next()) {
                producto = new Producto();
                producto.setNombre(resultado.getString("nombre"));
                productos.add(producto);
            }
            desconectarBase();
            return productos;

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en listarProductosNombre.");
        }
    }

    // b) Lista los nombres y los precios de todos los productos de la tabla producto. 
    public ArrayList<Producto> listarProductosNombreYPrecio() throws Exception {
        try {

            String sql = "SELECT nombre, precio FROM producto;";

            consultarBase(sql);

            Producto producto = null;
            ArrayList<Producto> productos = new ArrayList();

            while (resultado.next()) {
                producto = new Producto();
                producto.setNombre(resultado.getString("nombre"));
                producto.setPrecio(resultado.getDouble("precio"));
                productos.add(producto);
            }
            desconectarBase();
            return productos;

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en listarProductosNombreYPrecio.");
        }
    }

    public ArrayList<Producto> listarProductos() throws Exception {
        try {

            String sql = "SELECT * FROM producto;";

            consultarBase(sql);

            Producto producto = null;
            ArrayList<Producto> productos = new ArrayList();

            while (resultado.next()) {
                producto = new Producto();
                producto.setCodigo(resultado.getInt("codigo"));
                producto.setNombre(resultado.getString("nombre"));
                producto.setPrecio(resultado.getDouble("precio"));
                producto.setCodigoFabricante(resultado.getInt("codigo_fabricante"));
                productos.add(producto);
            }
            desconectarBase();
            return productos;

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en listarProductos.");
        }
    }

    // c) Listar aquellos productos que su precio esté entre 120 y 202. 
    public ArrayList<Producto> listarProductosEntrePrecios(int precioMin, int precioMax) throws Exception {
        try {

            String sql = "SELECT * FROM producto WHERE precio > " + precioMin + " AND precio < " + precioMax + ";";

            consultarBase(sql);

            Producto producto = null;
            ArrayList<Producto> productos = new ArrayList();

            while (resultado.next()) {
                producto = new Producto();
                producto.setCodigo(resultado.getInt("codigo"));
                producto.setNombre(resultado.getString("nombre"));
                producto.setPrecio(resultado.getDouble("precio"));
                producto.setCodigoFabricante(resultado.getInt("codigo_fabricante"));
                productos.add(producto);
            }
            desconectarBase();
            return productos;

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en listarProductosEntrePrecios.");
        }
    }

    // d) Buscar y listar todos los Portátiles de la tabla producto. 
    public ArrayList<Producto> listarProductosBuscarNombre(String nombre) throws Exception {
        try {

            String sql = "SELECT * FROM producto WHERE upper(nombre) LIKE '%" + nombre.toUpperCase() + "%';";

            consultarBase(sql);

            Producto producto = null;
            ArrayList<Producto> productos = new ArrayList();

            while (resultado.next()) {
                producto = new Producto();
                producto.setCodigo(resultado.getInt("codigo"));
                producto.setNombre(resultado.getString("nombre"));
                producto.setPrecio(resultado.getDouble("precio"));
                producto.setCodigoFabricante(resultado.getInt("codigo_fabricante"));
                productos.add(producto);
            }
            desconectarBase();
            return productos;

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en listarProductosBuscarNombre.");
        }
    }

    // e) Listar el nombre y el precio del producto más barato.
    public ArrayList<Producto> listarProductosNombrePrecioDelMasBarato() throws Exception {
        try {

            String sql = "SELECT nombre, precio FROM producto WHERE precio = (SELECT min(precio) FROM producto);";

            consultarBase(sql);

            Producto producto = null;
            ArrayList<Producto> productos = new ArrayList();

            while (resultado.next()) {
                producto = new Producto();
                producto.setNombre(resultado.getString("nombre"));
                producto.setPrecio(resultado.getDouble("precio"));
                productos.add(producto);
            }
            desconectarBase();
            return productos;

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en listarProductosNombrePrecioDelMasBarato.");
        }
    }

    // f) Ingresar un producto a la base de datos. 
    // Busca el próximo código disponible (esto debería hacerse automático en la base de datos, no?
    public int proximoCodigoProducto() throws Exception {
        try {

            String sql = "SELECT max(codigo) + 1 FROM producto;";

            consultarBase(sql);

            desconectarBase();

            return resultado.getInt(1);

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en proximoCodigoProducto.");
        }
    }

    
    // h) Editar un producto con datos a elección.
    public Producto buscarProductoPorCodigo(int codigo) throws Exception {
        try {

            String sql = "SELECT * FROM producto WHERE codigo = " + codigo + ";";

            consultarBase(sql);

            Producto producto = null;

            while (resultado.next()) {
                producto = new Producto();
                producto.setCodigo(resultado.getInt("codigo"));
                producto.setNombre(resultado.getString("nombre"));
                producto.setPrecio(resultado.getDouble("precio"));
                producto.setCodigoFabricante(resultado.getInt("codigo_fabricante"));
            }
            desconectarBase();
            return producto;

        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema en listarProductos.");
        }
    }
    
}
