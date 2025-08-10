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
public class UserEvent extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String FullName=req.getParameter("txt_fullname");
        String EventName=req.getParameter("txt_EventName");
        String Contactno=req.getParameter("txt_number"); 
        String Email=req.getParameter("txt_email");
        String btnsubmit=req.getParameter("btn_submit");
        
         out.println(FullName);
         out.println(EventName);
         out.println(Contactno); 
         out.println(Email);
         out.println(btnsubmit);
         
          Database db=new Database();
       out.println(db.Connectdb());
       
       if(btnsubmit.equals("submit"))
       {
          String sql="insert into userevent(FullName,Ename,Contactno,Email) values('"+FullName+"','"+EventName+"','"+Contactno+"','"+Email+"')";
         
         String result=db.Query(sql,"Event & Workshop Successfully");
         
         out.println(result);
                  
       }
    }

   
}
