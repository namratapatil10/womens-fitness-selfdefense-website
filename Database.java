
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class Database
{
    Connection cn=null;
    Statement st=null;
    String Connectdb()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fit_defencehub","root","root");           
            return("Database connected");
         }
        catch(Exception ex)
        {
             return(ex.toString());       
         }
    }
    String Query(String sql,String message)
    {
        try
        {
             st=cn.createStatement() ;
             st.executeUpdate(sql);
             return (message);
        } catch (Exception e)
        {
            return (e.toString());
        }
    }   
    
    String getId(String sql,String column)
    {
    int id=1;
        try {
  
    st=cn.createStatement();
    ResultSet rs=st.executeQuery(sql);
    while(rs.next())
    {
        id=Integer.parseInt(rs.getString(column))+1;
        
    }
    
    return (String.valueOf(id));
            
        } catch (Exception e) 
        {
            return (e.toString());
        }
       
    }

   
   
}
