<% 
String uid=request.getParameter("id"); 
String password=request.getParameter("pass"); 
session.setAttribute("suid", uid);
if(uid.equals("admin") && password.equals("12345"))
{
 response.sendRedirect("success.jsp");
}
else
{
 response.sendRedirect("Failed.jsp");
}
%> 
