<%@ page import ="java.sql.*"%>
<%
String hotelname=(String) session.getAttribute("k");
String username=request.getParameter("name");
String persons=request.getParameter("users");
String date=request.getParameter("date");
String time=request.getParameter("time");




try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
    st.executeUpdate(" insert into treg( hotelname,username,tdate,ttime,nousers) values('"+hotelname+"','"+username+"','"+date+"','"+time+"','"+persons+"')");
    
}
catch(Exception e){
    out.println(e);
}
response.sendRedirect("location.html");
%>