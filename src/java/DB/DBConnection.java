/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */
package DB;
import java.sql.*;

public class DBConnection {
    public Connection con;
    public Statement stmt;
    public ResultSet rst;
    public ResultSet rst1;
    public PreparedStatement pstmt;
    public DBConnection()throws Exception{
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/codecamp","root","root");
        stmt=con.createStatement();
    
    }
}

