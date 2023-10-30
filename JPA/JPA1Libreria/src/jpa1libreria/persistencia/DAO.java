/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria.persistencia;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public abstract class DAO {

    protected EntityManagerFactory emf;
    protected EntityManager em;

    public DAO() {
    }

    protected void conectarBase() throws Exception {
        try {
            emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
            em = emf.createEntityManager();
        } catch (Exception e) {
            throw e;
        }
    }
//    
//    
//        protected void insertarModificarEliminar(String sql) throws Exception {
//        try {
//            conectarBase();
//            
//            sentencia = conexion.createStatement();
//            sentencia.executeUpdate(sql);
//            
//        } catch (ClassNotFoundException | SQLException ex) {
//            // conexion.rollback();
//            /*
//                Descomentar la línea anterior si desean tener en cuenta el rollback.
//                Correr el siguiente script en Workbench
//            
//                SET autocommit=1;
//                COMMIT;
//            
//                **Sin rollback igual anda
//             */
//            throw ex;
//        } finally {
//            desconectarBase();
//        }
//    }
//
//    protected void consultarBase(String sql) throws Exception {
//        try {
//            sentencia = conexion.createStatement();
//            resultado = sentencia.executeQuery(sql);
//        } catch (Exception ex) {
//            throw ex;
//        }
//    }

    protected void desconectarBase() throws Exception {
        try {

        } catch (Exception e) {
            throw e;
        }

    }

}
