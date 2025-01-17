<%-- 
    Document   : distance
    Created on : 8 Jul, 2024, 5:46:45 AM
    Author     : biswa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Finding</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page import="java.util.*" %>
        <%@page import="javax.swing.*" %>

        <%
            String currentLocation = request.getParameter("c_destination");
            String targetLocation = request.getParameter("destination");

            if (currentLocation.equals("null") || targetLocation.equals("null")) {
                JOptionPane.showMessageDialog(null, "Please enter both current and target locations.");
                response.sendRedirect("distance.html");
        %>
        
        <%
            } else {
                if (currentLocation.equalsIgnoreCase("Baramunda") && targetLocation.equalsIgnoreCase("Dhauli")) {
                    // out.println("Distance: 15.2 KM");
                    JOptionPane.showMessageDialog(null, "Distance: 15.2 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Baramunda") && targetLocation.equalsIgnoreCase("Mukteswar")) {
                    JOptionPane.showMessageDialog(null, "Distance: 8.8 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Baramunda") && targetLocation.equalsIgnoreCase("Lingaraj")) {
                    JOptionPane.showMessageDialog(null, "Distance: 7.8 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Baramunda") && targetLocation.equalsIgnoreCase("Vivanta")) {
                    JOptionPane.showMessageDialog(null, "Distance: 7.2 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Baramunda") && targetLocation.equalsIgnoreCase("Lyfe")) {
                    JOptionPane.showMessageDialog(null, "Distance: 7.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Baramunda") && targetLocation.equalsIgnoreCase("ITC")) {
                    JOptionPane.showMessageDialog(null, "Distance: 5.1 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Jaydev Vihar") && targetLocation.equalsIgnoreCase("Dhauli")) {
                    JOptionPane.showMessageDialog(null, "Distance: 22.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Jaydev Vihar") && targetLocation.equalsIgnoreCase("Mukteswar")) {
                    JOptionPane.showMessageDialog(null, "Distance: 9.8 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Jaydev Vihar") && targetLocation.equalsIgnoreCase("Lingaraj")) {
                    JOptionPane.showMessageDialog(null, "Distance: 10.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Jaydev Vihar") && targetLocation.equalsIgnoreCase("Vivanta")) {
                    JOptionPane.showMessageDialog(null, "Distance: 12.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Jaydev Vihar") && targetLocation.equalsIgnoreCase("Lyfe")) {
                    JOptionPane.showMessageDialog(null, "Distance: 5.4 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Jaydev Vihar") && targetLocation.equalsIgnoreCase("ITC")) {
                    JOptionPane.showMessageDialog(null, "Distance: 9.7 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Vani Vihar") && targetLocation.equalsIgnoreCase("Dhauli")) {
                    JOptionPane.showMessageDialog(null, "Distance: 20.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Vani Vihar") && targetLocation.equalsIgnoreCase("Mukteswar")) {
                    JOptionPane.showMessageDialog(null, "Distance:  8.3 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Vani Vihar") && targetLocation.equalsIgnoreCase("Lingaraj")) {
                    JOptionPane.showMessageDialog(null, "Distance: 8.6 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Vani Vihar") && targetLocation.equalsIgnoreCase("Vivanta")) {
                    JOptionPane.showMessageDialog(null, "Distance: 13.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Vani Vihar") && targetLocation.equalsIgnoreCase("Lyfe")) {
                    JOptionPane.showMessageDialog(null, "Distance: 3.1 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Vani Vihar") && targetLocation.equalsIgnoreCase("ITC")) {
                    JOptionPane.showMessageDialog(null, "Distance: 11.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Rasulgarh") && targetLocation.equalsIgnoreCase("Dhauli")) {
                    JOptionPane.showMessageDialog(null, "Distance: 14.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Rasulgarh") && targetLocation.equalsIgnoreCase("Mukteswar")) {
                    JOptionPane.showMessageDialog(null, "Distance:  7.4 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Rasulgarh") && targetLocation.equalsIgnoreCase("Lingaraj")) {
                    JOptionPane.showMessageDialog(null, "Distance: 7.8 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Rasulgarh") && targetLocation.equalsIgnoreCase("Vivanta")) {
                    JOptionPane.showMessageDialog(null, "Distance: 15.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Rasulgarh") && targetLocation.equalsIgnoreCase("Lyfe")) {
                    JOptionPane.showMessageDialog(null, "Distance: 5.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Rasulgarh") && targetLocation.equalsIgnoreCase("ITC")) {
                    JOptionPane.showMessageDialog(null, "Distance: 13.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Palasuni") && targetLocation.equalsIgnoreCase("Dhauli")) {
                    JOptionPane.showMessageDialog(null, "Distance: 17.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Palasuni") && targetLocation.equalsIgnoreCase("Mukteswar")) {
                    JOptionPane.showMessageDialog(null, "Distance:  13.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Palasuni") && targetLocation.equalsIgnoreCase("Lingaraj")) {
                    JOptionPane.showMessageDialog(null, "Distance: 13.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Palasuni") && targetLocation.equalsIgnoreCase("Vivanta")) {
                    JOptionPane.showMessageDialog(null, "Distance: 16.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Palasuni") && targetLocation.equalsIgnoreCase("Lyfe")) {
                    JOptionPane.showMessageDialog(null, "Distance: 5.8 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Palasuni") && targetLocation.equalsIgnoreCase("ITC")) {
                    JOptionPane.showMessageDialog(null, "Distance: 14.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Hasapal") && targetLocation.equalsIgnoreCase("Dhauli")) {
                    JOptionPane.showMessageDialog(null, "Distance: 18.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Hasapal") && targetLocation.equalsIgnoreCase("Mukteswar")) {
                    JOptionPane.showMessageDialog(null, "Distance:  14.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Hasapal") && targetLocation.equalsIgnoreCase("Lingaraj")) {
                    JOptionPane.showMessageDialog(null, "Distance: 14.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Hasapal") && targetLocation.equalsIgnoreCase("Vivanta")) {
                    JOptionPane.showMessageDialog(null, "Distance: 19.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Hasapal") && targetLocation.equalsIgnoreCase("Lyfe")) {
                    JOptionPane.showMessageDialog(null, "Distance: 8.9 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Hasapal") && targetLocation.equalsIgnoreCase("ITC")) {
                    JOptionPane.showMessageDialog(null, "Distance: 17.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Nakhara") && targetLocation.equalsIgnoreCase("Dhauli")) {
                    JOptionPane.showMessageDialog(null, "Distance: 48.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Nakhara") && targetLocation.equalsIgnoreCase("Mukteswar")) {
                    JOptionPane.showMessageDialog(null, "Distance:  45.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Nakhara") && targetLocation.equalsIgnoreCase("Lingaraj")) {
                    JOptionPane.showMessageDialog(null, "Distance: 45.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Nakhara") && targetLocation.equalsIgnoreCase("Vivanta")) {
                    JOptionPane.showMessageDialog(null, "Distance: 50.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Nakhara") && targetLocation.equalsIgnoreCase("Lyfe")) {
                    JOptionPane.showMessageDialog(null, "Distance: 39.0 KM");
                    response.sendRedirect("distance.html");
                } else if (currentLocation.equalsIgnoreCase("Nakhara") && targetLocation.equalsIgnoreCase("ITC")) {
                    JOptionPane.showMessageDialog(null, "Distance: 48.0 KM");
                    response.sendRedirect("distance.html");
                } else {
                    out.println("Distance: Unknown"); // Handle other cases here
                }
            }
        %>

    </body>
</html>
