<%-- 
    Document   : registeraction
    Created on : Mar 22, 2018, 3:44:48 PM
    Author     : WorkSpace
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        
<%

    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String pwd2 = request.getParameter("password");
    String email2 = request.getParameter("email");
    Class.forName("org.postgresql.Driver");
    
    
   try{
    
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mydatabase","postgres", "2112122");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into users values('"+fname+"','"+lname+"','"+email2+"','"+pwd2+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("registersuccess.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("register.jsp");
    }
    
   }catch (Exception e)
   {
   out.println(e.getMessage());
       %>
       <script>

    alert("An accout already exist using this email.");
    // window.location.href = "register.jsp";
</script>
   <%    
       
   }
%>
    </body>
</html>