<%@ page import ="java.sql.*"%>
<%
String k=request.getParameter("k");





try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
   
 
  
    st.executeUpdate(" delete from cart where itemname='"+k+"'");
    
    
    
}
catch(Exception e){
    out.println(e);
}
response.sendRedirect("viewcart.jsp");


%>   	    