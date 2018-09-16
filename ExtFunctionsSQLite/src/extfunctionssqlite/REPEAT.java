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
public class REPEAT extends Function{

    @Override
    protected void xFunc() throws SQLException {
        if (args()!=2)
            throw new SQLException();
        try{
            String string = value_text(0);
            int repeticiones = value_int(1);
            String stringRepetido = "";
            for (int c=0; c<repeticiones; c++)
                stringRepetido+=string + " ";
            result(stringRepetido);
        } catch(SQLException ex) {
            result(0);
        }
    }
    
}
