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
public class TRIM extends Function{

    @Override
    protected void xFunc() throws SQLException {
        if (args() != 2)
            throw new SQLException();
        try{
            String string = value_text(0);
            String valueToRemove = value_text(1);
            StringBuilder sb = new StringBuilder(string);
            if (string.charAt(0) == valueToRemove.charAt(0))
                sb.deleteCharAt(0);
            else if (string.charAt(string.length()-1) == valueToRemove.charAt(0))
                sb.deleteCharAt(string.length()-1);
            string = sb.toString();
            result(string);
        } catch(SQLException ex) {
            result(0);
        }
    }
    
}
