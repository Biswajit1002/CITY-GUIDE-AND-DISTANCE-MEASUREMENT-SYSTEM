<%-- 
    Document   : newjsp
    Created on : 5 Jul, 2024, 11:34:28 AM
    Author     : biswa
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.ResultSet" %>
        <%@page import="java.sql.Statement" %>
        <%@page import="java.sql.Connection" %>
        <%@page import="java.sql.*,java.util.*" %>
        <%
            try{
            String username= request.getParameter("username");
            String password= request.getParameter("password");
            String confirmpassword= request.getParameter("confirmpassword");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","biswa1002");
            PreparedStatement ps=con.prepareStatement("update admin1 set password=? , confirmpassword=? where username=?");
            ps.setString(2,confirmpassword);
            ps.setString(1,password);
            ps.setString(3,username);
            ResultSet rs=ps.executeQuery();
            if(password.equals(confirmpassword)){
            if(rs.next()){
            
                JOptionPane.showMessageDialog(null,"updated successfully");
                 response.sendRedirect("login.html");
            }
            }
            }catch(Exception e){
                e.printStackTrace();
            }
          
       
            %>
            

    </body>
</html>