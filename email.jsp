<%@ page import = "java.io.*,java.util.* "%>
<%@ page import ="javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "javax.mail.Authenticator" %>
<%@ page import = "javax.mail.Transport" %>
<%@ page import = " javax.mail.MessagingException" %>
<%@ page import = " javax.mail.Message.RecipientType" %>
<%@ page import ="java.sql.*"%>




<%



    
        Properties props = new Properties();

        props.setProperty("mail.transport.protocol", "smtp");
        props.setProperty("mail.smtp.host", "smtp.gmail.com");
        props.setProperty("mail.smtp.port", "587");
        props.setProperty("mail.smtp.user", "bharathch596@gmail.com");
        props.setProperty("mail.smtp.password", "Bharathnew596");
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.auth", "true");

      
   
    String from="bharathch596@gmail.com";
    String to=request.getParameter("email");
    String name=request.getParameter("firstname");
    String address=request.getParameter("address");
    String city=request.getParameter("city");
    String price=request.getParameter("price");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
        Statement st=conn.createStatement();
        st.executeUpdate(" insert into billing( name, address,city, email , price) values('"+name+"','"+address+"','"+city+"','"+to+"','"+price+"')");
        
    }
    catch(Exception e){
        out.println(e);
    }
    
    String sub="Subject";
    Random rand = new Random();
    int n = rand.nextInt(9000) ;
    System.out.println(n);
    
   
    
    String msg= "your otp for payment is '"+n+"' please dont share with anyone";
    try {

     
       
        Session mailSession = Session.getInstance(props, new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(
                    "bharathch596@gmail.com", "Bharathnew596");// Specify the Username and the PassWord
            }
        });

        mailSession.setDebug(false);

       
            Transport transport = mailSession.getTransport();

            MimeMessage message = new MimeMessage(mailSession);
            message.setSubject(sub);
            message.setFrom(new InternetAddress(from));
            message.addRecipients(Message.RecipientType.TO, to);

            MimeMultipart multipart = new MimeMultipart();

            MimeBodyPart messageBodyPart = new MimeBodyPart();

            messageBodyPart.setContent(msg, "text/html");

            multipart.addBodyPart(messageBodyPart);
            message.setContent(multipart);

            transport.connect();
            transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
            transport.close();
          
        } catch (NoSuchProviderException e) {
            e.printStackTrace();
           
        } catch (MessagingException e) {
            e.printStackTrace();
        }
       response.sendRedirect("final.jsp");
    

   

    
   
    





%>
