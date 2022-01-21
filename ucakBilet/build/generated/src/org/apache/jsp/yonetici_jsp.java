package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class yonetici_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>YÖNETİCİ</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Styles/yonetici.css\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class =\"baslik\"></div>\n");
      out.write("        <center>\n");
      out.write("        <div class=\"a_baslik\">\n");
      out.write("            <p  class=\"slogan\">BİLET KONTROL PANELİ</p>\n");
      out.write("        </div>\n");
      out.write("        </center>\n");
      out.write("       <img class=\"logo\" src=\"logo.png\" alt=\"logo\" width=\"15%\" height=\"10%\">\n");
      out.write("              \n");
      out.write("        <div class=\"d-iç\">\n");
      out.write("        \n");
      out.write("            <form action=\"index.jsp\">\n");
      out.write("                <button id=\"logout\" type=\"submit\">ÇIKIŞ</button>\n");
      out.write("            </form>\n");
      out.write("    \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"main\">\n");
      out.write("    \n");
      out.write("            <img class=\"resim\" src=\"ucak.jpg\" alt=\"ortaimg\" width=\"100%\" height=\"100%\" />\n");
      out.write("            \n");
      out.write("            <div class=\"bilet\">\n");
      out.write("                <center>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                      <th>NEREDEN</th>\n");
      out.write("                      <th>NEREYE</th>\n");
      out.write("                      <th>SAAT</th>\n");
      out.write("                      <th>FİYAT</th>\n");
      out.write("                      <th>YENİ FİYAT</th>\n");
      out.write("                      <th>KAYDET</th>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td>İSTANBUL</td>\n");
      out.write("                      <td>SİVAS</td>\n");
      out.write("                      <td>09:00 --> 10:20</td>\n");
      out.write("                      <td>290,99</td>\n");
      out.write("                      <td><input class=\"inp\" type=\"text\"></td>\n");
      out.write("                      <td><input class=\"btn\" type=\"submit\" value=\"KAYDET\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>İSTANBUL</td>\n");
      out.write("                        <td>SİVAS</td>\n");
      out.write("                        <td>21:30 --> 22:50</td>\n");
      out.write("                        <td>350,99</td>\n");
      out.write("                        <td><input class=\"inp\" type=\"text\"></td>\n");
      out.write("                        <td><input class=\"btn\" type=\"submit\" value=\"KAYDET\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>SİVAS</td>\n");
      out.write("                        <td>İSTANBUL</td>\n");
      out.write("                        <td>10:00 --> 11:20</td>\n");
      out.write("                        <td>400</td>\n");
      out.write("                        <td><input class=\"inp\" type=\"text\"></td>\n");
      out.write("                        <td><input class=\"btn\" type=\"submit\" value=\"KAYDET\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>SİVAS</td>\n");
      out.write("                        <td>İSTANBUL</td>\n");
      out.write("                        <td>16:30 --> 17:50</td>\n");
      out.write("                        <td>599,99</td>\n");
      out.write("                        <td><input class=\"inp\" type=\"text\"></td>\n");
      out.write("                        <td><input class=\"btn\" type=\"submit\" value=\"KAYDET\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                </center>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"cizgi\"></div>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("      <div class=\"alt\">\n");
      out.write("        <form action=\"yonetici_uye.jsp\">\n");
      out.write("        <button class=\"alt_btn\" type=\"submit\">KULLANICI KONTROL PANELİ</button>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("    </center>\n");
      out.write("</body>\n");
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
