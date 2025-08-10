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
import javax.servlet.http.HttpSession;

/**
 *
 * @author VAIBHAV
 */
public class Event_Booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
         String E_ID=req.getParameter("event_id");
         String price=req.getParameter("price");
         
          out.println(E_ID);
          HttpSession session=req.getSession();
          Database db=new Database();
          db.Connectdb();
          
          String result=db.Query("insert into Event_Booking(event_id,user_id,booking_status) values('"+E_ID+"','"+session.getAttribute("user_id")+"','Booked')", "event Booked");
          session.setAttribute("price", price);
          out.println(result);
          resp.sendRedirect("Event_Payment.jsp");
    }

    
}
