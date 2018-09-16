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
public class FACTORIAL extends Function {

    @Override
    protected void xFunc() throws SQLException {
        if (args()!=1)
            throw new SQLException();
        try {
            int number = value_int(0);
            int factorial = number;
            for (int c=(number-1); c>1; c--)
                factorial = factorial * c;
            result(factorial);
        } catch (SQLException ex) {
            result(0);
        }
    }
    
}
