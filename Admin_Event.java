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
public class Admin_Event extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String EventID=req.getParameter("AdminEvent_ID");
        String EventName=req.getParameter("txt_fullname");
        String GuestName=req.getParameter("txt_EventName");
         String Duration=req.getParameter("txt_Duration");
          String Time=req.getParameter("txt_number");
        String StartDate=req.getParameter("dob");
        String EndDate=req.getParameter("txtdob");
        String TrainerID=req.getParameter("course");
        String Agelimit=req.getParameter("txt_age");
        String Uploadimage=req.getParameter("profile_upload");
        String Des=req.getParameter("txt_des");
         String price=req.getParameter("txt_p");
          String location=req.getParameter("txt_Location");
        String btnsub=req.getParameter("txt_btn");
       
         
         out.println(EventName);
         out.println(GuestName);
          out.println(Duration);
           out.println(Time);
         out.println(StartDate);
         out.println(EndDate);
         out.println(TrainerID);
         out.println(Agelimit);
        out.println(Uploadimage);
         out.println(Des);
          out.println(price);
           out.println(location);
       
         Database db=new Database();
         out.println(db.Connectdb());
       
        if(btnsub.equals("Submit"))
       {
          String sql="insert into admin_event(EventName,GuestName,Duration,cTime,StartDate,EndDate,TrainerID,Agelimit,img,Description,Price,location)values('"+EventName+"','"+GuestName+"','"+Duration+"','"+Time+"','"+StartDate+"','"+EndDate+"','"+TrainerID+"','"+Agelimit+"','"+Uploadimage+"','"+Des+"','"+price+"','"+location+"')";
         
         String result=db.Query(sql,"admin_event Successfully");
         
         out.println(result);
         resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Data Submit Successfully');");
                   out.println("location='Admin_Event.jsp';");
                    out.println("</script>");
                  
       }
        
        if(btnsub.equals("Update"))
       {
        String sql="Update admin_event SET EventName='"+EventName+"',GuestName='"+GuestName+"',Duration='"+Duration+"',cTime='"+Time+"',StartDate='"+StartDate+"',EndDate='"+EndDate+"',TrainerID='"+TrainerID+"',Agelimit='"+Agelimit+"',,img='"+Uploadimage+"',Description='"+Des+"',Price='"+price+"',location='"+location+"' where AdminEvent_ID='"+EventID+"'";
         
        String result=db.Query(sql,"admin_event Update Successfully");
         
         out.println(result);
         resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Data Update Successfully');");
                    out.println("location=' Admin_Event.jsp';");
                    out.println("</script>");
                  
       }
        
        if(btnsub.equals("Delete"))
       {
         String sql="Delete from admin_event where AdminEvent_ID='"+EventID+"'";
         
         String result=db.Query(sql,"admin_event Delete Successfully");
         
         out.println(result);
         resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Data Delete Successfully');");
                    out.println("location=' Admin_Event.jsp';");
                    out.println("</script>");
                  
       }
    }
}
