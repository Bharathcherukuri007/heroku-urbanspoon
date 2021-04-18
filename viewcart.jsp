<%@ page import ="java.sql.*"%>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet"  type="text/css" href="images/bootstrap.min.css">
  <link rel="stylesheet"  type="text/css" href="images/new.css">
  <script  src="images/bootstrap.bundle.min.js"></script>
 
 
</head>
<table class="table"  style="background-color:orange;" >
  <thead>
    <tr>
     
      <th scope="col">Restaurent</th>
      <th scope="col">Price	</th>
      <th scope="col">Item</th>
      <th scope="col">Delete</th>
      
    </tr>
  </thead>
  <div class="topnav">
  <a style="color:white ; font-size: 40px; " herf=>URBAN SPOON</a>
  <a class="active" href="new.html">Home</a>
  <a href="order.jsp">Orders</a>
  <a href="contact">Contact & About us</a>
  
  <a href="logout.jsp">logout</a>
  

  <%
  try{
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
	    Statement st=conn.createStatement();
	    ResultSet rs=st.executeQuery("select * from cart;");
	    while(rs.next()){
	    	
	    
  %>
  <tbody class="hr">
    <tr >
      
      <td><%= rs.getString(1) %></td>
      <td><%=rs.getInt(2) %></td>
      <td><%=rs.getString(3) %></td>
     

 
      <td><a  href='deletecart.jsp?k=<%=rs.getString(3) %>'>delete</a></td>
    </tr>
    </div>
     
   
  </tbody>
  <%
	    
	    }
		   
		 
		  
	    
	    
	}
	catch(Exception e){
	    out.println(e);
	}

  %>
</table>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select sum(price) from cart;");
while(rs.next()){

%>
 <form action="payment.jsp?price=<%=rs.getInt(1) %>" method="post">
<center>
Total:

</center>
<%
}
%>
<center>
 <button id="success" >payment</button>
 
  </center>
</form>

<style>
.table{
background-color:orange;
}
. activ {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 25px;
}
/* Change the color of links on hover */
. a:hover {
  background-color: #ddd;
  color
: black;
}
/* Add a color to the active/current link */
. ac a{
  background-color: orange;
  color: white;
}
.topnav input[type=text] {
  float: right;
  padding: 6px;
  border: none;
  margin-top: 8px;
  margin-right: 16px;
  font-size: 25px;
}
a{
  font-size: 40px;
}
.active{

}
.hr a:hover{
background-color: #ddd;
 
     text-align: center;
     padding: 14px 16px;
     text-decoration: none;
     font-size: 25px;

}
.hr a{
 color: #f2f2f2;
     text-align: center;
     padding: 14px 16px;
     text-decoration: none;
     font-size: 25px;
}
button {
  background-color: cadetblue;
  color: whitesmoke;
  border: 0;
  -webkit-box-shadow: none;
  box-shadow: none;
  font-size: 18px;
  font-weight: 500;
  border-radius: 7px;
  padding: 15px 35px;
  cursor: pointer;
  white-space: nowrap;
  margin: 10px;
}
img {
  width: 200px;
}
input[type="text"] {
  padding: 12px 20px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
}
h1 {
  border-bottom: solid 2px grey;
}
#success {
  background: green;
}
#error {
  background: red;
}
#warning {
  background: coral;
}
#info {
  background: cornflowerblue;
}
#question {
  background: grey;
</style>
 