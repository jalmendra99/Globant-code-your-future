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
        try {
            emf = Persistence.createEntityManagerFactory("JPA1LibreriaPU");
        } catch (Exception e) {
            throw e;
        }
    }

    protected void conectarBase() {
        if (!em.isOpen()) {
            em = emf.createEntityManager();
        }
    }

    protected void desconectarBase() {
        if (em.isOpen()) {
            em.close();
        }

    }

}
