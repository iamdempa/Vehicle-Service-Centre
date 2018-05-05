package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class BookOnline_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Ponja - Contact Us</title>\n");
      out.write("\n");
      out.write("        <link rel=\"icon\" href=\"images/1.png\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/mdb.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/mdbootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.css\"> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/Homepage/NavigationBar.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/Homepage/carousel.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/Homepage/cards.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");

            if (session.getAttribute("username") == null) {
                response.sendRedirect("Login.jsp");
            } else {
                response.sendRedirect("BookOnline.jsp");

            }
        
      out.write("\n");
      out.write("        \n");
      out.write("        <!--Navbar-->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg  navigation-bar\">\n");
      out.write("\n");
      out.write("            <!-- Navbar brand --> \n");
      out.write("\n");
      out.write("            <img class=\"logo\" alt=\"Brand\" src=\"images/1.png\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"Homepage.jsp\">Ponja Vehicle Service Centre</a>\n");
      out.write("            <!-- Collapse button -->\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#basicExampleNav\" aria-controls=\"basicExampleNav\"\n");
      out.write("                    aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <!-- Collapsible content -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"basicExampleNav\">\n");
      out.write("\n");
      out.write("                <!-- Links -->\n");
      out.write("                <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Home\n");
      out.write("                            <span class=\"sr-only\">(current)</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">About Us</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\" nav-link dropdown-toggle\" id=\"navbarDropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                            Services\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu dropdown-services\" aria-labelledby=\"navbarDropdownMenuLink\">                                                        \n");
      out.write("                            <a class=\"dropdown-item hvr-sweep-to-top\" href=\"Our Services.html\"> Car Wash</a>\n");
      out.write("                            <a class=\"dropdown-item hvr-sweep-to-top\" href=\"Our Services.html\"> Auto Detailing</a>\n");
      out.write("                            <a class=\"dropdown-item hvr-sweep-to-top\" href=\"Our Services.html\"> Lubrication Service</a>   \n");
      out.write("                            <a class=\"dropdown-item hvr-sweep-to-top\" href=\"Our Services.html\"> Wheel Alignment</a>                            \n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Book Online</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item vertical-line\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Contact Us</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <span class=\"fa fa-sign-in fa\" aria-hidden=\"true\"></span>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item \">\n");
      out.write("                        <a class=\"nav-link\" href=\"Login.jsp\">Login</a>\n");
      out.write("                    </li>                      \n");
      out.write("                </ul>\n");
      out.write("                <!-- Links -->                \n");
      out.write("            </div>\n");
      out.write("            <!-- Collapsible content -->\n");
      out.write("        </nav>\n");
      out.write("        <!--/.Navbar-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("        <div class=\"jumbotron\">\n");
      out.write("            <h1>Contact Us- Our Branch network</h1>\n");
      out.write("            <p>Any customers from anywhere around the country can choose between following branches of our Service Centres. We are that spreaded out.</p>\n");
      out.write("            <!--<p><a class=\"btn btn-primary btn-lg\" href=\"#\" role=\"button\">Learn more</a></p>-->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--==========================================-->\n");
      out.write("        <!--Footer-->\n");
      out.write("        <!--==========================================-->\n");
      out.write("        <footer class=\"page-footer stylish-color-dark\">\n");
      out.write("\n");
      out.write("            <!--Footer Links-->\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <!-- Footer links -->\n");
      out.write("                <div class=\"row text-center text-md-left mt-3 pb-3\">\n");
      out.write("\n");
      out.write("                    <!--First column-->\n");
      out.write("                    <div class=\"col-md-3 col-lg-3 col-xl-3 mx-auto mt-3\">\n");
      out.write("                        <h6 class=\"title mb-4 font-bold\">Ponja Vehicle Service Center</h6>\n");
      out.write("                        <p>Ponja the total auto care specialists commenced to offer total auto care solutions in 1994 and continues to believe every customer is a valuable business partner.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <!--/.First column-->\n");
      out.write("\n");
      out.write("                    <hr class=\"w-100 clearfix d-md-none\">\n");
      out.write("\n");
      out.write("                    <!--Second column-->\n");
      out.write("                    <div class=\"col-md-2 col-lg-2 col-xl-2 mx-auto mt-3\">\n");
      out.write("                        <h6 class=\"title mb-4 font-bold\">Packages</h6>\n");
      out.write("                        <p><a href=\"#!\">Car Wash Packages</a></p>\n");
      out.write("                        <p><a href=\"#!\">Full Lubrication Service Packages</a></p>\n");
      out.write("                        <p><a href=\"#!\">Auto Detailing Packages</a></p>\n");
      out.write("                        <!--<p><a href=\"#!\">Customer Delight Services</a></p>-->\n");
      out.write("                    </div>\n");
      out.write("                    <!--/.Second column-->\n");
      out.write("\n");
      out.write("                    <hr class=\"w-100 clearfix d-md-none\">\n");
      out.write("\n");
      out.write("                    <!--Third column-->\n");
      out.write("                    <div class=\"col-md-3 col-lg-2 col-xl-2 mx-auto mt-3\">\n");
      out.write("                        <h6 class=\"title mb-4 font-bold\">Useful links</h6>\n");
      out.write("                        <p><a href=\"#!\">About Us</a></p>\n");
      out.write("                        <p><a href=\"#!\">Services</a></p>\n");
      out.write("                        <p><a href=\"#!\">Book Online</a></p>\n");
      out.write("                        <!--<p><a href=\"#!\">Help</a></p>-->\n");
      out.write("                    </div>\n");
      out.write("                    <!--/.Third column-->\n");
      out.write("\n");
      out.write("                    <hr class=\"w-100 clearfix d-md-none\">\n");
      out.write("\n");
      out.write("                    <!--Fourth column-->\n");
      out.write("                    <div class=\"col-md-4 col-lg-3 col-xl-3 mx-auto mt-3\">\n");
      out.write("                        <h6 class=\"title mb-4 font-bold\">Contact</h6>\n");
      out.write("                        <p><i class=\"fa fa-home mr-3\"></i> Pasan Mw, Welivita Rd, Malabe.</p>\n");
      out.write("                        <a data-toggle=\"modal\" data-target=\"#emailUs\"  id=\"email-modal-trigger-btn\" ><p><i class=\"fa fa-envelope mr-3\"></i> info@ponja.lk</p></a>\n");
      out.write("                        <!--<p><i class=\"fa fa-home mr-3\"></i> <button type=\"button\" class=\"btn btn-outline-white btn-sm\" data-toggle=\"modal\" data-target=\"#emailUs\">info@example.com</button></p>-->\n");
      out.write("                        <!--<button type=\"button\" class=\"btn btn-outline-blue btn-sm\" ><i class=\"fa fa-envelope mr-3\"></i>info@example.com</button>-->\n");
      out.write("                        <p><i class=\"fa fa-phone mr-3\"></i> + 94 234 567 88</p></a\n");
      out.write("                        <p><i class=\"fa fa-print mr-3\"></i> + 94 234 567 89</p>                \n");
      out.write("                    </div>\n");
      out.write("                    <!--/.Fourth column-->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- Footer links -->\n");
      out.write("\n");
      out.write("                <hr>\n");
      out.write("\n");
      out.write("                <div class=\"row py-3 d-flex align-items-center\">\n");
      out.write("\n");
      out.write("                    <!--Grid column-->\n");
      out.write("                    <div class=\"col-md-8 col-lg-9\">\n");
      out.write("\n");
      out.write("                        <!--Copyright-->\n");
      out.write("                        <p class=\"text-center text-md-left grey-text\">© 2018 Copyright: <a href=\"Homepage.jsp\"><strong> www.ponjavehicleservice.lk</strong></a></p>\n");
      out.write("                        <!--/.Copyright-->\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!--Grid column-->\n");
      out.write("\n");
      out.write("                    <!--Grid column-->\n");
      out.write("                    <div class=\"col-md-4 col-lg-3 ml-lg-0\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!--Grid column-->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </footer>\n");
      out.write("        <!--==========================================-->\n");
      out.write("        <!--End of Footer-->\n");
      out.write("        <!--==========================================-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\"#button\").click(function () {\n");
      out.write("                    $('html, body').animate({\n");
      out.write("                        scrollTop: $(\"#myCarousel\").offset().top\n");
      out.write("                    }, 500);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script> \n");
      out.write("\n");
      out.write("        <!-- JQuery -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-3.2.1.min.js\"></script>             \n");
      out.write("        <!-- Bootstrap core JavaScript -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("        <!-- MDB core JavaScript -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/mdb.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!--==========================================-->\n");
      out.write("        <!--End of carousel-->\n");
      out.write("        <!--==========================================-->\n");
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
