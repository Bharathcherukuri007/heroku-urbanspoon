<%@ page import ="java.sql.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String gender=request.getParameter("gender");
String date=request.getParameter("date");
String month=request.getParameter("month");
String year=request.getParameter("year");
String day=year+'-'+month+'-'+date;





String adress=request.getParameter("first");
String add2=request.getParameter("second");
String pin=request.getParameter("pin");

String fin=adress+add2+pin;



try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
    st.executeUpdate(" insert into registerpage( uname, password,email, adress , phonenumber,gender,dob) values('"+username+"','"+password+"','"+email+"','"+fin+"','"+phone+"','"+gender+"','"+day+"')");
    
}
catch(Exception e){
    out.println(e);
}
response.sendRedirect("loginform.html");
%>
