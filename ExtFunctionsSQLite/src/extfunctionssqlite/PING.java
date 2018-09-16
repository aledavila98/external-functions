/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package extfunctionssqlite;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.sql.SQLException;
import org.sqlite.Function;

/**
 *
 * @author Alejandro Dávila
 */
public class PING extends Function{

    @Override
    protected void xFunc() throws SQLException {
       if (args() != 1)
           throw new SQLException();
       try {
           String ipAddress = value_text(0);
           new Socket().connect(new InetSocketAddress(ipAddress,80),5000);
           result(1);
       } catch (IOException ex) {
           result(0);
       }
           
    }
    
}
