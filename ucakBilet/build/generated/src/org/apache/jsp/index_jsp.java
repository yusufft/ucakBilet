package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Bilet Al!</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Styles/index.css\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class =\"baslik\"></div>\n");
      out.write("\n");
      out.write("        <div class=\"a_baslik\">\n");
      out.write("            <p  class=\"slogan\">Yeni ihtimallere bir uçak bileti mesafe...</p>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("       <img class=\"logo\" src=\"logo.png\" alt=\"logo\" width=\"15%\" height=\"10%\">\n");
      out.write("\n");
      out.write("       <img class=\"logo1\" src=\"logo.png\" alt=\"logo1\" width=\"15%\" height=\"10%\">\n");
      out.write("              \n");
      out.write("\n");
      out.write("        <div class=\"main\">\n");
      out.write("    \n");
      out.write("            <img class=\"resim\" src=\"ucak.jpg\" alt=\"ortaimg\" width=\"100%\" height=\"100%\" />\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"oturum\">\n");
      out.write("            <div class=\"d-iç\">\n");
      out.write("        \n");
      out.write("                <form action=\"yonetici_gir.jsp\" method=\"get\">\n");
      out.write("                    <input id=\"admin_btn\" type=\"submit\" value=\"YÖNETİCİ GİRİŞİ\" />\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("                <form action=\"oturum_ac.jsp\" method=\"get\">\n");
      out.write("                    <input  id=\"user_btn\" type=\"submit\" value=\"OTURUM AÇ\" />\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("                <form action=\"kaydol.jsp\" method=\"get\">\n");
      out.write("                    <input  id=\"kayit_btn\" type=\"submit\" value=\"KAYDOL\" />\n");
      out.write("                </form>\n");
      out.write("    \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"cizgi\"></div>\n");
      out.write("\n");
      out.write("      <div class=\"alt\">\n");
      out.write("        <h1>Yepyeni bir hikâye için şimdi bir uçak bileti alın</h1>\n");
      out.write("      </div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
