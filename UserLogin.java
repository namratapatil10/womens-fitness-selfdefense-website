/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VAIBHAV
 */
public class UserLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String Email=req.getParameter("txt_email");
        String password=req.getParameter("txt_pass");
        String btnlogin=req.getParameter("btn_submit");
        
         out.println(Email);
         out.println(password);
        
         
          Database db=new Database();
       out.println(db.Connectdb());
        HttpSession session=req.getSession();
       if(btnlogin.equals("Login"))
         {
            Connection cn=null;
            Statement st=null;
             try
            {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fit_defencehub","root","root");
            st=cn.createStatement();
            String sql="select * from user_registrationform where Email='"+Email+"' and Pass='"+password+"'";
                ResultSet result=st.executeQuery(sql);
                if(result.next())
                {
                    session.setAttribute("user_id", result.getString("userRegi_ID"));
                   resp.sendRedirect("User_CourseRegistration.jsp");
                  
                   
                }
                else
                {
                    out.println("Login Failed");
                    resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Login Fail');");
                    out.println("location=' User_Registrationform.jsp';");
                    out.println("</script>");
                }
            }
            catch(Exception ex)
            {
                out.println(ex);
             } 
         }
        
    }
  
}
