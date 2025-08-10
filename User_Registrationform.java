/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VAIBHAV
 */
public class User_Registrationform extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String fullname=req.getParameter("txt_fullname");
        String Email=req.getParameter("txt_email");
        String Password=req.getParameter("txt_pass");
        String btnlogin=req.getParameter("btn_submit");
        
         out.println(fullname);
         out.println(Email);
         out.println(Password);
        
         
          Database db=new Database();
       out.println(db.Connectdb());
       
       if(btnlogin.equals("SignUp"))
       {
          String sql="insert into User_Registrationform(Fullname,Email,Pass) values('"+fullname+"','"+Email+"','"+Password+"')";
         
         String result=db.Query(sql,"Register Successfully");
         
         out.println(result);
         
           resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Signup Successfull');");
                    out.println("location=' UserLogin.jsp';");
                    out.println("</script>");
                  
       }
    } 
}
