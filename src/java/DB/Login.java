/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.math.BigInteger;
import java.sql.ResultSet;

/**
 *
 * @author Arpita
 */
public class Login {
    private String uname,email,pass;

    
    private boolean status;
   

   
public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
    
    public boolean loginMember()throws Exception{
          DBConnection db=new DBConnection();
          
          ResultSet rst;
            rst =db.stmt.executeQuery("select * from login where username='"+uname+"'and password='"+pass+"'");
           
            if(rst.next()){
                status=true;
            }else{
                status=false;
            }
            
            return status;
    }
}
