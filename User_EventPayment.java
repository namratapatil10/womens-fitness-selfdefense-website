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
public class User_EventPayment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
        
        String FullName=req.getParameter("txt_fullname");
        String Card=req.getParameter("txt_number1");
        String CVC=req.getParameter("txt_number2");
        String Expiry=req.getParameter("txt_number3");
        String Amount=req.getParameter("txt_number4");
        String submit=req.getParameter("btn");
        String UPIn=req.getParameter("txt_number5");
        String Amo=req.getParameter("txt_number6");
       String fulln=req.getParameter("txt_fullna");
       String Amop=req.getParameter("txt_num");
       String date=req.getParameter("txt_date");
       String Received=req.getParameter("txt_Received");
       String pending=req.getParameter("txt_pending");
       String status=req.getParameter("txt_status");
        String paysubmit=req.getParameter("Paym");

       
        
       
        out.println(FullName);
        out.println(Card);
        out.println(CVC);
        out.println(Expiry);
        out.println(Amount);
        out.println(submit);
         out.println(UPIn);
         out.println(Amo);
         out.println(fulln);
         out.println(Amop);
         out.println(date);
         out.println(Received);
         out.println(pending);
         out.println(status);
         
         
         
         
         Database db=new Database();
       out.println(db.Connectdb());
       
       if(submit.equals("Paym"))
       {
          String sql="insert into user_eventpayment(FullN,Amou,PaymentD,ReceivedP,pendingP,Payments) values('"+fulln+"','"+Amop+"','"+date+"','"+Received+"','"+pending+"','"+status+"')";
         
         String result=db.Query(sql,"Payment Successfully");
         
         out.println(result);
         resp.sendRedirect("Admin_cashEvent.jsp");
             
       }

    
    }

   
}
