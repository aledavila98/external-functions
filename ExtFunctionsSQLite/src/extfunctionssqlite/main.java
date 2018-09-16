/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package extfunctionssqlite;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.sqlite.Function;

/**
 *
 * @author Alejandro Dávila
 */
public class main {

    /**
     * @param args the command line arguments
     * @throws java.sql.SQLException
     */
    public static void main(String[] args) throws SQLException{
        String dbpath = "jdbc:sqlite:F:/Documentos/Unitec/TB2/ExtFunctionsSQLite/src/extfunctionssqlite/test.db";
        try {
            Connection connection = DriverManager.getConnection(dbpath);
            Function.create(connection, PING.class.getSimpleName(), new PING());
            Function.create(connection, PMT.class.getSimpleName(), new PMT());
            Function.create(connection,BIN2DEC.class.getSimpleName(), new BIN2DEC());
            Function.create(connection, DEC2BIN.class.getSimpleName(), new DEC2BIN());
            Function.create(connection, FACTORIAL.class.getSimpleName(), new FACTORIAL());
            Function.create(connection, HEX2DEC.class.getSimpleName(), new HEX2DEC());
            Function.create(connection,DEC2HEX.class.getSimpleName(), new DEC2HEX());
            Function.create(connection, COMPARESTRING.class.getSimpleName(), new COMPARESTRING());
            Function.create(connection, TRIM.class.getSimpleName(), new TRIM());
            Function.create(connection, REPEAT.class.getSimpleName(), new REPEAT());
            Statement st = connection.createStatement();
            st.setQueryTimeout(30);
            ResultSet rs = st.executeQuery("select REPEAT('hola', 3) as b");
            System.out.println(rs.getString("b"));
            /*Statement st = connection.createStatement();
            st.setQueryTimeout(30);
            '110001'
            ResultSet rs = st.executeQuery("select PING('www.google.com') as a");
            System.out.println(rs.getString("a"));*/
            //connection.commit();
            connection.close();
        } catch (SQLException ex) {
            System.out.println("bqtp");
        }
    }
    
}
