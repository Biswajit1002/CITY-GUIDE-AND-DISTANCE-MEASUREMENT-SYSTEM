<%-- 
    Document   : web_23
    Created on : 6 Jul, 2024, 10:44:28 AM
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
        try {
            String name = request.getParameter("name");
            String email  = request.getParameter("email");
            String phonenumber = request.getParameter("phonenumber");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmpassword = request.getParameter("confirmpassword");

   //         if (name.isEmpty()) {
   //             JOptionPane.showMessageDialog(null, "name not taken");
     //       } else if (gender.isEmpty()) {
       //         JOptionPane.showMessageDialog(null, "gender Not Added");
        //    } else if (username.isEmpty()) {
         //       JOptionPane.showMessageDialog(null, "username Not Taken");
          //  } else if (password.isEmpty()) {
         //       JOptionPane.showMessageDialog(null, "password Not Taken");
        //    } else if (pan.isEmpty()) {
        //        JOptionPane.showMessageDialog(null, "pan Not Taken");
        //    } else if (country.isEmpty()) {
         //       JOptionPane.showMessageDialog(null, "country Not Taken");
          //  } else {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "biswa1002");
                PreparedStatement ps = con.prepareStatement("Insert Into admin1 values(?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, phonenumber);
                ps.setString(4, username);
                ps.setString(5, password);
                ps.setString(6, confirmpassword);
                ResultSet rs = ps.executeQuery();
                if(rs.next()){
                JOptionPane.showMessageDialog(null,"added successfully !!!!");
                response.sendRedirect("login.html");
                }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,e);
            JOptionPane.showMessageDialog(null,"Cannot Same Data Again !!!!");
        }
            %>
    </body>
</html>
