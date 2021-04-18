<%@ page import ="java.sql.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
int c=0;
String a=null;


try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
    ResultSet rs=   st.executeQuery("select  password  from registerpage where uname='"+username+"'");
    while(rs.next()){
     a=rs.getString(1);
    	
    	
    }
    if(a.equals(password)){
		response.sendRedirect("location.html");
	}
	else{
		response.sendRedirect("");
	}
}
catch(Exception e){
    out.println(e);
}

%>
