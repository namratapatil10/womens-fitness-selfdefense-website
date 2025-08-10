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
public class User_feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        PrintWriter out=resp.getWriter();
        String UserID=req.getParameter("txt_id");
        String CourseName=req.getParameter("Select_course");
       String comments=req.getParameter("txt_comments"); 
        String btnsubmit1=req.getParameter("btn_submit");
        
         out.println(UserID);
         out.println(CourseName);
         out.println(comments);
         out.println(btnsubmit1);
         
         
          Database db=new Database();
       out.println(db.Connectdb());
       
       if(btnsubmit1.equals("Submit"))
       {
          String sql="insert into user_feedback(UserID,CourseName,Comments) values('"+UserID+"','"+CourseName+"','"+comments+"')";
         
         String result=db.Query(sql,"Feedback Successfully");
         
         out.println(result);
            
          resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Data Submit Successfull');");
                    out.println("location='User_feedback.jsp';");
                    out.println("</script>");
                  
       }
        
    }

    

}
