/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.math.BigInteger;

/**
 *
 * @author Arpita
 */
public class Register {
    private String uname,fname,gender,colj,email,linked,git,photo,pass;

   private boolean status;
private long contact;
  

   
 public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    public long getContact() {
        return contact;
    }

    public void setContact(long contact) {
        this.contact = contact;
    }
    public String getLinked() {
        return linked;
    }

    public void setLinked(String linked) {
        this.linked = linked;
    }

    public String getGit() {
        return git;
    }

    public void setGit(String git) {
        this.git = git;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

   

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getColj() {
        return colj;
    }

    public void setColj(String colj) {
        this.colj = colj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
     public boolean registerMember()throws Exception{
           DBConnection db=new DBConnection();
 System.out.println("bean");
 
        int i=db.stmt.executeUpdate("insert into register(username,email,password,name,college,gender,linked,github,contact,image)values('"+uname+"','"+email+"','"+pass+"','"+fname+"','"+colj+"','"+gender+"','"+linked+"','"+git+"','"+contact+"','"+photo+"')");
        int j=db.stmt.executeUpdate("insert into login(username,email,password)values('"+uname+"','"+email+"','"+pass+"')");
    System.out.println(fname);
        if(i>0 && j>0){
        status=true;
        System.out.println(status);
    }
    else{
        status=false;
    }
    return status;
     }
    
}
