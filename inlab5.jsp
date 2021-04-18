<%@ page import="java.sql.*" %>
<%
String uname=request.getParameter("uname");
String pass =request.getParameter("pass");
String gender =request.getParameter("gender");
String location =request.getParameter("location");
String phone =request.getParameter("phone");

	try{
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_lab","root","root");
	    Statement st=conn.createStatement();
	    st.executeUpdate(" insert into reg( uname, password,gender,location,phone) values('"+uname+"','"+pass+"','"+gender+"','"+location+"','"+phone+"')");
	    
	}
	catch(Exception e)
	{
		out.println(e);
		
	}
	

