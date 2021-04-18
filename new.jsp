<%@ page import ="java.sql.*"%>
<div class="topnav">
  <a style="color:white ; font-size: 40px; " herf=>URBAN SPOON</a>
  <a class="active" href="new.html">Home</a>
  <a href="order.jsp">Orders</a>
  <a href="contact">Contact & About us</a>
  <a href="viewcart.jsp">cart</a>
  <a href="signup">Sign Up</a>
  
</div>
<br><br>



  
    
    <%
    String k=request.getParameter("k");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
   
    ResultSet rs= st.executeQuery(" select * from hotel where city='"+k+"' ");
    session.setAttribute("k",k);
    
    while(rs.next()){
	  
	   
   
    %>
     <div class="column">
<div class="card">
    <img src="images/3.jpg" alt="Denim Jeans" style="width:70%">
    <h1><%=rs.getString(1) %></h1>
    
    
   
     <p><%=rs.getString(2) %> </p>
    <p class="price">
   
    <p><%=rs.getString(3) %></p>
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <p><%=rs.getString(4) %></p>
    <span class="fa fa-star checked"></span>    
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
 
    <p ><button onclick="location.href='table.jsp?k=<%=rs.getString(1) %>'">View More</button></p>
  </div>
</div>

<%
    }
    }
    catch(Exception e){
        out.println(e);
    }
    
%>



<style>
   footer {
 background-color: orange;
  height: 200px;
  font-size: 30px;
  padding: 30px;
}
     .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 800px;
  margin: left;
  text-align: center;
  font-family: arial;
  float: left;
  margin: 0 -5px;
  row-gap: 110000px;
}
.price {
  color: grey;
  font-size: 22px;
}
.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color:orange;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}
.card button:hover {
  opacity: 0.7;
}
.column {
  float: left;
  width: 30%;
  padding: 0 10px;
}
p{
  background-color:white;
  padding-bottom: 10px;
}
/* Remove extra left and right margins, due to padding in columns */
.row {margin: 0 -5px;
  padding-bottom: 200px;
}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
  padding-bottom: 20px;
}
.checked {
  color: orange;
}
.topnav {
  background-color: #333;
  overflow: hidden;
}
/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 25px;
}
/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color
: black;
}
/* Add a color to the active/current link */
.topnav a.active {
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
 </style> 