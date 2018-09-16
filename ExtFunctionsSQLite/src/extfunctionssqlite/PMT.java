/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package extfunctionssqlite;

import java.io.IOException;
import java.sql.SQLException;
import org.sqlite.Function;

/**
 *
 * @author Alejandro Dávila
 */
public class PMT extends Function {

    @Override
    protected void xFunc() throws SQLException {
        if (args() != 3)
            throw new SQLException();
        try {
            double tax = value_double(0);
            int periodos = value_int(1);
            double monto = value_double(2);
            double pmt = monto*
                    ((Math.pow(1+tax,periodos)*tax)/
                    (Math.pow(1+tax, periodos)-1));
            result(pmt); 
        } catch(SQLException ex) {
            System.out.println("aqui falla");
        }
    }
    
}
