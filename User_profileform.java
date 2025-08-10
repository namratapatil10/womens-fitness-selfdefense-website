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
public class User_profileform extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String fullname=req.getParameter("txt_fullname");
        String UserID=req.getParameter("txt_id");
         String Email=req.getParameter("txt_email");
         String Contactno=req.getParameter("txt_number");
        String Gender=req.getParameter("Gender");
        String Age=req.getParameter("txt_Age");
        String Upload=req.getParameter("profile_upload");
        String btnlogin=req.getParameter("btn_submit");
        
         out.println(fullname);
         out.println(UserID);
         out.println(Email);
          out.println(Contactno);
         out.println(Gender);
         out.println(Age);
         out.println(Upload);
         out.println(btnlogin);
         
          Database db=new Database();
       out.println(db.Connectdb());
       
       
       if(btnlogin.equals("Submit"))
       {
          String sql="insert into user_profileform(Fullname,UserID,Contactno,Gender,Email,Age,Uploadimage) values('"+fullname+"','"+UserID+"','"+Contactno+"','"+Gender+"','"+Email+"','"+Age+"','"+Upload+"')";
         
         String result=db.Query(sql,"Create Profile Successfully");
         
         out.println(result);
                  
       }
    }

   
}
