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
public class Admin_CourseCreation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          PrintWriter out=resp.getWriter();
        String C_ID=req.getParameter("AdminCourseCreat_ID");
        String CourseName=req.getParameter("txt_Coursename");
        String Location=req.getParameter("txt_Location");
        String  Price=req.getParameter("txt_p");
        String Duration=req.getParameter("txt_Duration");
        String StartDate=req.getParameter("dob");
        String EndDate=req.getParameter("txtdob");
        String TrainerID=req.getParameter("course");
        String Agelimit=req.getParameter("txt_age");
        String Uploadimage=req.getParameter("profile_upload");
        String Description=req.getParameter("txt_des");
       String btnsub=req.getParameter("txt_Submit");
       
         
         out.println(CourseName);
         out.println(Location);
         out.println(Price);
         out.println(Duration);
         out.println(StartDate);
         out.println(EndDate);
         out.println(TrainerID);
         out.println(Agelimit);
         out.println(Uploadimage);
         out.println(Description);
       
         Database db=new Database();
       out.println(db.Connectdb());
       
       
               
        if(btnsub.equals("Submit"))
       {
          String sql="insert into admin_coursecreation(Coursename,location,Price,Duration,StartDate,EndDate,TrainerID,Agelimit,Uploadimage,Description)values('"+CourseName+"','"+Location+"','"+Price+"','"+Duration+"','"+StartDate+"','"+EndDate+"','"+TrainerID+"','"+Agelimit+"','"+Uploadimage+"','"+Description+"')";
         
         String result=db.Query(sql,"admin coursecreation Successfully");
         
         out.println(result);
             resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                   out.println("alert('Data Submit Successfully');");
                 out.println("location='Admin_CourseCreation.jsp';");
                    out.println("</script>");
                  
       }
         if(btnsub.equals("Update"))
       {
          String sql="Update admin_coursecreation SET Coursename='"+CourseName+"',location='"+Location+"',Price='"+Price+"',Duration='"+Duration+"',StartDate='"+StartDate+"' ,EndDate='"+EndDate+"',TrainerID='"+TrainerID+"',Agelimit='"+Agelimit+"',Uploadimage='"+Uploadimage+"',Description='"+Description+"' where  AdminCourseCreat_ID='"+C_ID+"'";
         
         String result=db.Query(sql,"admin_coursecreation Update Successfully");
         
         out.println(result);
          resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Data Update Successfully');");
                    out.println("location='Admin_CourseCreation.jsp';");
                    out.println("</script>");
                  
                  
       }
        
        if(btnsub.equals("Delete"))
       {
          String sql="Delete from admin_coursecreation where AdminCourseCreat_ID='"+C_ID+"'";
         
         String result=db.Query(sql,"admin_coursecreation Delete Successfully");
         
         out.println(result);
          resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Data Delete  Successfully');");
                    out.println("location='Admin_CourseCreation.jsp';");
                    out.println("</script>");
                  
                  
       }
    }
    

    
}
