/*
Java - JDBC - Ejercicio 0 para configurar todo..
Ejercicio nnn - Página nnn

Fer V - Jalmendra99@gmail.com

 */
package jdbc00testing;

import java.sql.*;

public class JDBC00Testing {

    public static void main(String[] args) {

        try {
//            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/nba";
            Connection con = DriverManager.getConnection(url, "root", "root");  
            String sql = "SELECT codigo, Nombre, peso FROM jugadores LIMIT 10";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()) {
                int x = rs.getInt("codigo");
                String s = rs.getString("Nombre");
                double d = rs.getDouble("peso");
                System.out.println("Fila = " + x + " " + s + " " + d);
                
            }
            
        } catch (SQLException ex) {
//            con = null;
            ex.printStackTrace();
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }
        

    }

}
