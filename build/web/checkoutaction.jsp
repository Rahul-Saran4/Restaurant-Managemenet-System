<%-- 
    Document   : checkoutaction
    Created on : Mar 23, 2018, 10:00:04 PM
    Author     : WorkSpace
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checking out</title>
    </head>
    <body>
        
<%
    String item=(String)session.getAttribute("item"); 
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String address = request.getParameter("address");
    String area = request.getParameter("area");
    String city = request.getParameter("city");
    String zipcode = request.getParameter("zipcode");
   String phone = request.getParameter("phone");
    String ddate = request.getParameter("ddate");
    String dtime = request.getParameter("dtime");
    String quantity=(String)session.getAttribute("quantity"); 
    
    String price=(String)session.getAttribute("price"); 
    String email=(String)session.getAttribute("email"); 
    String orderstatus = "waiting";
    
    
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date date = new Date();
   String orderdate=dateFormat.format(date);

    
    
    //out.println(item+fname+lname+address+area+city+zipcode+phone+ddate+dtime+price+email+orderstatus+quantity);
    
Class.forName("org.postgresql.Driver");
    
    
   try{
    
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mydatabase","postgres", "2112122");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into orders(item,fname,lname,address,area,city,zipcode,phone,ddate,dtime,quantity,price,email,orderstatus,orderdate)values('"+item+"','"+fname+"','"+lname+"','"+address+"','"+area+"','"+city+"','"+zipcode+"','"+phone+"','"+ddate+"','"+dtime+"','"+quantity+"','"+price+"','"+email+"','"+orderstatus+"','"+orderdate+"')");
    int j = st.executeUpdate("insert into payments values('"+email+"','"+fname+"','"+lname+"','"+item+"',"+ddate+"',"+price+")");
    if (i > 0) {
        
        response.sendRedirect("checkoutsuccess.jsp");
       
    } else {
        response.sendRedirect("orderonline.jsp");
    }
    
   }catch (Exception e)
   {
       out.println("insert into orders(item,fname,lname,address,area,city,zipcode,phone,ddate,dtime,quantity,price,email,orderstatus,orderdate)values('"+item+"','"+fname+"','"+lname+"','"+address+"','"+area+"','"+city+"','"+zipcode+"','"+phone+"','"+ddate+"','"+dtime+"','"+quantity+"','"+price+"','"+email+"','"+orderstatus+"','"+orderdate+"')");

   out.println(e);
       
       %>
       <script>

    alert("Some Error Occured. Couldn't Complete your Order.");
     //window.location.href = "orderonline.jsp";
</script>
   <%    
       
   }


   

 
%>
    </body>
</html>