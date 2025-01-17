<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>




<%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All User Details</title>


        <style>
            table,tr,td{
                border-collapse: collapse;
                padding: 18px;

            }
            body{
                background-color: wheat;
            }
        </style>
    </head>
    <body>
    <center> <h1 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow'">All User Details</h1>
    <table border="2">
        <tr style="font-weight: bold; text-align: center; background-color: greenyellow">
            <td>Name</td>
            <td>Email</td>
            <td>Mobile</td>
            <td>UserName</td>
            <td>Password</td>
            <td>Confirm password</td>
        </tr>
    </center>
        <%
            try {
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "biswa1002 ");

                String sql = "Select * from admin1";

                Statement statement = con.createStatement();
                Connection connection = null;
                ResultSet resultSet = statement.executeQuery(sql);

                while (resultSet.next()) {

        %>
        <tr>
            <td><%=resultSet.getString("name")%></td>
            <td><%=resultSet.getString("email")%></td>
            <td><%=resultSet.getString("phonenumber")%></td>
            <td><%=resultSet.getString("username")%></td>
            <td><%=resultSet.getString("password")%></td>
            <td><%=resultSet.getString("confirmpassword")%></td>
        </tr>

        <%
                }
                connection.close();
            } catch (Exception e) {

            }

        %>




    </table>
         <center>
        <a href="http://localhost:8084/project/admin.html">Back</a>
    </center>



</body>
</html>