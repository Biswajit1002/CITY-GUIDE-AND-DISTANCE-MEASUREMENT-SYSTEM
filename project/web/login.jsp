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
            String Username= request.getParameter("Username");
            String Password= request.getParameter("Password");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","biswa1002");
            PreparedStatement ps=con.prepareStatement("select * from admin1 where username=? and password=?");
            ps.setString(1,Username);
            ps.setString(2,Password);
            ResultSet rs = ps.executeQuery();
            try{
                if(rs.next()){
                   JOptionPane.showMessageDialog(null,"login successfully");
                }else{
                    JOptionPane.showMessageDialog(null,"sorry invalid username/password !!!!");
                }
            }
            catch(Exception e){
                e.printStackTrace();
            }
            %>
            

    </body>
</html>
