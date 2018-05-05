package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Login - www.ponja.lk</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <link rel=\"icon\" href=\"images/1.png\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/mdb.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/mdbootstrap.css\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.css\"> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/Login/Login.css\">  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if (session.getAttribute("username") == null) {
//                response.sendRedirect("Login.jsp");
            } else {
              response.sendRedirect("Dashboard.jsp");

            }
        
      out.write("\n");
      out.write("        <!-- /Start your project here-->\n");
      out.write("\n");
      out.write("        <!--==========================================-->\n");
      out.write("        <!--Sign in-->\n");
      out.write("        <!--==========================================-->\n");
      out.write("\n");
      out.write("        <section class=\"login-background\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6 offset-md-3 col-sm-8 offset-sm-2 col-xs-12\">\n");
      out.write("                        <div class=\"card border-none\">\n");
      out.write("                            <div class=\"card-block\">\n");
      out.write("                                <div class=\"mt-2\"> \n");
      out.write("                                    <img id=\"userImage\" src=\"images-login/male.jpg\" alt=\"Male\" class=\"brand-logo mx-auto d-block img-fluid rounded-circle\"/>\n");
      out.write("                                </div>\n");
      out.write("                                <p class=\"mt-4 text-white lead text-center\">\n");
      out.write("                                    Sign in to access <strong>Dashboard</strong> \n");
      out.write("                                </p>\n");
      out.write("\n");
      out.write("                                <div class=\"container text-center\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-12 col-sm-12\">\n");
      out.write("                                            <!--                                            <form class=\"form-group text-center\">-->\n");
      out.write("                                            <div class=\"form-group\">                                        \n");
      out.write("                                                <p class=\"form-control-static\">Select User Type :</p>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <!--SELECT USER OPTION-->\n");
      out.write("                                            <div class=\"form-group mx-sm-3\" >\n");
      out.write("                                                <select class=\"custom-select\" id=\"selectUserType\">                                           \n");
      out.write("                                                    <option value=\"user\">User</option>\n");
      out.write("                                                    <option value=\"admin\">Administrator</option>                                            \n");
      out.write("                                                </select>\n");
      out.write("                                            </div>     \n");
      out.write("                                            <!--END OF SELECT USER OPTION-->\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            <!--</form>-->\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"mt-4\">\n");
      out.write("                                    <form method=\"POST\" action=\"Login\">\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group md-form\">\n");
      out.write("                                            <!--<input type=\"email\" class=\"form-control\" id=\"email\" value=\"\" placeholder=\"Enter email address\">-->\n");
      out.write("                                            <i class=\"fa fa-user prefix grey-text\"></i>\n");
      out.write("                                            <input type=\"text\" id=\"defaultForm-email username\" name=\"username\" class=\"form-control\">\n");
      out.write("                                            <label for=\"defaultForm-email\">Your Username</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group md-form\">\n");
      out.write("                                            <!--<input type=\"password\" class=\"form-control\" id=\"password\" value=\"\" placeholder=\"Enter password\">-->\n");
      out.write("                                            <i class=\"fa fa-lock prefix grey-text\"></i>\n");
      out.write("                                            <input type=\"password\" name=\"password\" id=\"defaultForm-pass password\" class=\"form-control\">\n");
      out.write("                                            <label for=\"defaultForm-pass\">Your password</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"text-center\">\n");
      out.write("                                            <button type=\"reset\" class=\"btn btn-amber btn-sm\"><strong>Reset</strong></button>\n");
      out.write("                                            <button type=\"submit\" id=\"btn-sign-in\" class=\"btn btn-green btn-sm\"><strong>Sign in</strong></button>\n");
      out.write("                                            <!--<button type=\"submit\" id=\"btn-sign-up\" class=\"btn btn-dark-green btn-sm\"><strong>Sign Up</strong></button>-->\n");
      out.write("                                            <a class=\"btn btn-green btn-sm\" href=\"RegisterUser.jsp\">Sign Up</a>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                    </form>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <p class=\"text-center\">\n");
      out.write("                                    Forget password? <a class=\"reset\" href=\"#\">Reset</a>\n");
      out.write("                                </p>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--==========================================-->\n");
      out.write("        <!--End of Sign in-->\n");
      out.write("        <!--==========================================-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- SCRIPTS -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--==========================================-->\n");
      out.write("        <!--User icon change-->\n");
      out.write("        <!--==========================================-->        \n");
      out.write("        <script>\n");
      out.write("            var data = {\n");
      out.write("                \"user\": {img: \"images-login/male.jpg\", label: \"jQuery\"},\n");
      out.write("                \"admin\": {img: \"images-login/admin.jpg\", label: \"Xml\"}\n");
      out.write("\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            $('#selectUserType').change(function () {\n");
      out.write("                var value = $(this).val();\n");
      out.write("                if (data[value] != undefined)\n");
      out.write("                {\n");
      out.write("                    $('#userImage').attr('src', data[value].img);\n");
      out.write("\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <!--==========================================-->\n");
      out.write("        <!--End of User icon change-->\n");
      out.write("        <!--==========================================-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- JQuery -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-3.2.1.min.js\"></script>             \n");
      out.write("        <!-- Bootstrap core JavaScript -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("        <!-- MDB core JavaScript -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/mdb.min.js\"></script>\n");
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
