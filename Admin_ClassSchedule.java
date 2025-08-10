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
public class Admin_ClassSchedule extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out=resp.getWriter();
         String Class_ID=req.getParameter("ClassSched_ID");
        String CourseName=req.getParameter("txt_Coursename");
        String TrainerID=req.getParameter("course");
        String Duration=req.getParameter("txt_Duration");
        String DayofWeek=req.getParameter("txt_Days");
        String Time=req.getParameter("txt_number");
        String StartDate=req.getParameter("dob");
        String EndDate=req.getParameter("txtdob");
        String btnsum=req.getParameter("txt_sub");
        
         out.println(CourseName);
         out.println(TrainerID);
         out.println(Duration);
            out.println(DayofWeek);
         out.println(Time);
        

          out.println(StartDate);
         out.println(EndDate);
        
         
        
       Database db=new Database();
       out.println(db.Connectdb());
       
       
        if(btnsum.equals("Submit"))
       {
        String sql="insert into admin_classschedule(Coursename,TrainerID,Duration,DaysofWeek,cTime,StartDate,EndDate)values('"+CourseName+"','"+TrainerID+"','"+Duration+"','"+DayofWeek+"','"+Time+"','"+StartDate+"','"+EndDate+"')";
         
         String result=db.Query(sql,"Admin ClassSchedule Successfully");
         
         out.println(result);
           resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Data Submit Successfully');");
                    out.println("location=' Admin_ClassSchedule.jsp';");
                    out.println("</script>");
                  
                  
       }
        if(btnsum.equals("Update"))
       {
          String sql="Update admin_classschedule SET Coursename='"+CourseName+"',TrainerID='"+TrainerID+"',Duration='"+Duration+"',DaysofWeek='"+DayofWeek+"',cTime='"+Time+"',StartDate='"+StartDate+"',EndDate='"+EndDate+"' where ClassSched_ID='"+Class_ID+"'";
         
         String result=db.Query(sql,"admin ClassSchedule Update Successfully");
         
         out.println(result);
         resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Data Update Successfully');");
                    out.println("location=' Admin_ClassSchedule.jsp';");
                    out.println("</script>");
                  
       }
        
        if(btnsum.equals("Delete"))
       {
         String sql="Delete from admin_classschedule  where ClassSched_ID='"+Class_ID+"'";
         
         String result=db.Query(sql,"admin_classschedule Delete Successfully");
         
         out.println(result);
         resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Data Delete Successfully');");
                    out.println("location=' Admin_ClassSchedule.jsp';");
                    out.println("</script>");
                  
       }
    }

   

}
