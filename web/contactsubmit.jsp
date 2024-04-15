
<%@ page import ="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Form Submission</title>
</head>
<body>
    <%
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        
        
        try{
    
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mydatabase","postgres", "2112122");
        Statement st = con.createStatement();
    
        int i = st.executeUpdate("insert into contactdetails values('"+name+"','"+email+"','"+message+"')");
        if (i > 0) {
        
        response.sendRedirect("contact.jsp");
       
        } else {
        response.sendRedirect("contact.jsp");
        }
    
        }catch (Exception e)
        {
          out.println("e.getMessage()");
       %>
       <script>

    alert("Try Again!");
    
</script>
        
    %>
    <h1>Contact Form Submission</h1>
    <p>Name: <%= name %></p>
    <p>Email: <%= email %></p>
    <p>Message: <%= message %></p>
</body>
</html>
