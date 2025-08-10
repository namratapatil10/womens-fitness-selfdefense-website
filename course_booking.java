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
public class course_booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
         String C_ID=req.getParameter("course_id");
         String price=req.getParameter("price");
          out.println(C_ID);
          HttpSession session=req.getSession();
          Database db=new Database();
          db.Connectdb();
          
          db.Query("insert into course_booking(course_id,user_id,booking_status) values('"+C_ID+"','"+session.getAttribute("user_id")+"','Booked')", "Course Booked");
          session.setAttribute("price", price);
          resp.sendRedirect("User_Payment.jsp");
    }

    
}
