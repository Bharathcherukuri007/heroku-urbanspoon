<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>


<%
   String result;
   
   // Recipient's email ID needs to be mentioned.
   String to = "bharathcherukur00@gmail.com";

   // Sender's email ID needs to be mentioned
   String from = "bharathch596@gmail.com";

   // Assuming you are sending email from localhost
   String host = "localhost";
   String port="587";
   String msg="hello";
   String sub="hi";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);

   // Get the default Session object.
  
   Session mailSession = Session.getInstance(properties, new javax.mail.Authenticator(){
       protected PasswordAuthentication getPasswordAuthentication() {
           return new PasswordAuthentication(
               "bharathch596@gmail.com", "Bharathnew596");// Specify the Username and the PassWord
       }
   });


   try {
       EmailUtility.sendEmail(host, port, from, "Bharathnew596", to, sub,
               msg);
        String resultMessage = "The e-mail was sent successfully";
   } catch (Exception ex) {
       ex.printStackTrace();
       String resultMessage = "There were an error: " + ex.getMessage();
   } finally {
	   String resultMessage;
       request.setAttribute("Message", resultMessage);
       getServletContext().getRequestDispatcher("/Result.jsp").forward(
               request, response);
   }
%>

<html>
   <head>
      <title>Send Email using JSP</title>
   </head>
   
   <body>
      <center>
         <h1>Send Email using JSP</h1>
      </center>
      
      <p align = "center">
         <% 
            out.println("Result: " + result + "\n");
         %>
      </p>
   </body>
</html>