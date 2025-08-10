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
public class Admin_Registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
        String FullName=req.getParameter("txt_fullname");
       
        String EmailID=req.getParameter("txt_email");
        String Password=req.getParameter("txt_pass");
        String sumbit=req.getParameter("btn_submit");
        
       
        
         out.println(FullName);
         
         out.println(EmailID);
         out.println(Password);
         
        
         Database db=new Database();
       out.println(db.Connectdb());
       
        if(sumbit.equals("SignUp"))
       {
          String sql="insert into admin_registration(Fullname,Email,Pass) values('"+FullName+"','"+EmailID+"','"+Password+"')";
         
         String result=db.Query(sql,"admin_registration Successfully");
         
         out.println(result);
         
         resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Signup Successfull');");
                    out.println("location=' AdminLogin.jsp';");
                    out.println("</script>");
                  
       }
       
    }

}
