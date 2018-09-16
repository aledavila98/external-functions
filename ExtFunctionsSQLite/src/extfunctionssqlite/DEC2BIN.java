/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package extfunctionssqlite;

import java.sql.SQLException;
import org.sqlite.Function;

/**
 *
 * @author Alejandro Dávila
 */
public class DEC2BIN extends Function{

    @Override
    protected void xFunc() throws SQLException {
       if (args()!=1)
           throw new SQLException();
       try {
           int decimal = value_int(0);
           String binario = Integer.toBinaryString(decimal);
           result(binario);
       } catch (SQLException ex) {
           result(0);
       }
    }
    
}
