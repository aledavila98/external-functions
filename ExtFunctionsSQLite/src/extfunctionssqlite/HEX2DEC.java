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
public class HEX2DEC extends Function{

    @Override
    protected void xFunc() throws SQLException {
        if (args() != 1)
            throw new SQLException();
        try {
            String hex = value_text(0);
            int decimal = Integer.valueOf(hex, 16);
            result(decimal);
        } catch (SQLException ex) {
            result(0);
        }
    }
    
}
