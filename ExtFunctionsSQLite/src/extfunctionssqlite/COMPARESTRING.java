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
public class COMPARESTRING extends Function{

    @Override
    protected void xFunc() throws SQLException {
        if (args() != 2)
            throw new SQLException();
        try{
            String string1 = value_text(0);
            String string2 = value_text(1);
            int n=0;
            if (string1.compareTo(string2) == 0){
                n = 0;
                result();
            }
            else if (string1.compareTo(string2) < 0)
                n = -1;
            else if (string1.compareTo(string2) > 0)
                n = 1;
            result((n));
        } catch(SQLException ex) {
            result(2);
        }
    }
    
}
