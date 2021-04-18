<%@ page import ="java.sql.*"%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
   
 
  
    st.executeUpdate(" truncate table cart;");
    
    
}
catch(Exception e){
    out.println(e);
}
response.sendRedirect("location.jsp");
%>   	  