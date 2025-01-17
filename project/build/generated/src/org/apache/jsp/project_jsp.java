package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.*;
import java.util.*;

public final class project_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

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
                response.sendRedirect("login.jsp");
                }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,e);
            JOptionPane.showMessageDialog(null,"Cannot Same Data Again !!!!");
        }
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
