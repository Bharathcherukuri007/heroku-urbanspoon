<%@ page import ="java.sql.*"%>
<%
String hotelname= request.getParameter("hotel_name");
String item=  request.getParameter("item_name");
session.invalidate();
String price=  request.getParameter("price");





try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
    int p = Integer.parseInt(price.trim());
 
  
    st.executeUpdate(" insert into cart( hotelname,price,itemname) values('"+hotelname+"','"+p+"','"+item+"')");
    
    
}
catch(Exception e){
    out.println(e);
}
response.sendRedirect("viewcart.jsp");

%>   	    