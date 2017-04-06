/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.oreilly.servlet.MultipartRequest;
import DB.Register;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Arpita
 */
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        out.println("getting in");
        try{
            System.out.print("try");
            
            String absolutepath=getServletContext().getRealPath("/image/");
        MultipartRequest m=new MultipartRequest(request,absolutepath);
        String photo="image/"+m.getFile("url").getName();
         String uname=m.getParameter("uname");
            out.println(uname);
        String fname=m.getParameter("fname");
        out.println(fname);
        String gender=m.getParameter("gender");
        String colj=m.getParameter("colj");
        String email=m.getParameter("email");
        String pass=m.getParameter("pass");
        String linked=m.getParameter("linked");
        String git=m.getParameter("git");
         out.println(git);
        out.println(m.getParameter("contact"));
        long contact=Long.parseLong(m.getParameter("contact"));
        
             RSA rsa=new RSA(1024);
        BigInteger plaintext = new BigInteger(pass.getBytes());
        
        BigInteger ciphertext = rsa.encrypt(plaintext);
        String cph=ciphertext.toString();  
        out.println(uname);
         out.println(contact);
         System.out.println(ciphertext);
           
        out.println(uname);
         out.println(contact);
        
        Register bean=new Register();
        bean.setPass(cph);
        bean.setUname(uname);
        
        bean.setEmail(email);
         bean.setFname(fname);
          bean.setGender(gender);
        
        bean.setColj(colj);
      
       bean.setLinked(linked);
       bean.setGit(git);
       bean.setContact(contact);
       bean.setPhoto(photo);
       
       
        
       
       
        boolean status=bean.registerMember();
        out.println(status);
        if(status){
    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
        else{
             RequestDispatcher rd=request.getRequestDispatcher("register.html");
            rd.include(request, response);
            out.println("error");
        }
            
       
        }
        catch(Exception e){
            System.out.print("Getting in");
            System.out.println(e);
        }
        
     
        
        processRequest(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
