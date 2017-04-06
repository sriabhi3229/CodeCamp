/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

/**
 *
 * @author HP
 */
public class Save {

    private String uname, filename;
    private boolean status;

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }
    
    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
    
    public boolean saveFile()throws Exception{
           DBConnection db=new DBConnection();
            System.out.println("bean");
 
            int i=db.stmt.executeUpdate("insert into files(uname,filename)values('"+uname+"','"+filename+"')");
            if(i>0){
                status=true;
                System.out.println(status);
            }
            else{
                status=false;
            }
            return status;
    }
}
