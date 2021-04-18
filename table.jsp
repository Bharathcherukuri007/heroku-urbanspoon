<%@ page session = "true" %>
<%
String k=request.getParameter("k");
session.setAttribute("k", k);
%>

<center>
    <body>
     
        <div class="main">
            <div class="ma">
            <form action="treg.jsp" method="post" >
                <h1>Table Reservation </h1>
        Name:
        <input type="text" name="name" ><br><br><br> 
     
        No. of persons
        <input type="text" name="users" > <br><br>
        Date
        <input type="date" name="date" ><br><br><br>
        Time:
    
         <input type="time" name="time" ><br><br>
         <button type="submit">submit</button>
        </form>
    </div>
   
    
    
    </div>
    

</body>


</center>

<style>
    .main{
        background-color:orange;
 
  border: 2px solid black;
  margin: 100px;
  padding: 50px;
  padding-left: auto;
  position: absolute;
  width: 400px;
  height: 550px;
  color: #000;
  top: 50%;
  left: 50%;
  padding: 60px 30px;
  
  transform: translate(-70%,-70%);
  box-sizing: border-box;
  box-shadow: 8px 8px 50px #000;
 

    }
        
    .login{  
            width: 382px;  
            overflow: hidden;  
            margin: auto;  
            margin: 20 0 0 450px;  
            padding: 80px;  
            background-color: orange;
            
            border-radius: 15px ;  
            border: solid 2px;
              
    }  
    h2{  
        text-align: center;  
        color:white;  
        padding: 20px;  
    }  
    label{  
        color: black;  
        font-size: 30px;  
    }  
    body{
        margin: 0;  
        padding: 0;  
        background-image: url("images/767033.jpg");
        background-repeat: no-repeat;  
        background-attachment: fixed; 
        background-size: 100% 100%;
        font-family: 'Arial';  
    }  
    .ma{
        opacity: 5.0;
    }
        

        

    
</style>