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
      out.write("\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <head>\n");
      out.write("        <!-- Importation du fichier head.jsp -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body style=\"background-color: whitesmoke;\">\n");
      out.write("        \n");
      out.write("        <!-- Importation du fichier header.jsp -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("        <br><br><br>\n");
      out.write("\n");
      out.write("        <marquee><p style=\"font-family: verdana; font-size: 1.5em;\">Bienvenue à ConfortShop. Passer vos différentes commandes et nous serons ravis de vous les faire parvenir.</p></marquee>\n");
      out.write("        <p style=\"text-align: center; font-family: verdana; font-size: 2.5em;\">Nos produits en promo !!!</p>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"card-deck\" style=\"position: relative; width: 90%; text-align: center; padding-left: 12%;\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <br>\n");
      out.write("                <img class=\"card-img-top\" src=\"images/customer-service.svg\" alt=\"Card image cap\" style=\"position: relative; width: 50%; margin-left: 25%; top: 2%;\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h5 class=\"card-title\">Nom du produit</h5>\n");
      out.write("                    <p class=\"card-text\">Les caractéristiques du produit</p>\n");
      out.write("                    <p class=\"card-text\"><s>Ancien prix</s> - Nouveau prix</p>\n");
      out.write("                    <a href=\"produit.jsp\" class=\"btn btn-light-blue\">Détails</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-footer\">\n");
      out.write("                    <div>\n");
      out.write("                        <small class=\"text-muted\">Quantité en stock :</small>\n");
      out.write("                        <br>\n");
      out.write("                        <small class=\"text-muted\">Valeur</small>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"produit.jsp\" class=\"btn btn-tb btn-blue-grey\">Ajouter au panier</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <br>\n");
      out.write("                <img class=\"card-img-top\" src=\"images/customer-service.svg\" alt=\"Card image cap\" style=\"position: relative; width: 50%; margin-left: 25%; top: 2%;\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h5 class=\"card-title\">Nom du produit</h5>\n");
      out.write("                    <p class=\"card-text\">Les caractéristiques du produit</p>\n");
      out.write("                    <p class=\"card-text\"><s>Ancien prix</s> - Nouveau prix</p>\n");
      out.write("                    <a href=\"produit.jsp\" class=\"btn btn-light-blue\">Détails</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-footer\">\n");
      out.write("                    <div>\n");
      out.write("                        <small class=\"text-muted\">Quantité en stock :</small>\n");
      out.write("                        <br>\n");
      out.write("                        <small class=\"text-muted\">Valeur</small>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"produit.jsp\" class=\"btn btn-tb btn-blue-grey\">Ajouter au panier</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <br>\n");
      out.write("                <img class=\"card-img-top\" src=\"images/customer-service.svg\" alt=\"Card image cap\" style=\"position: relative; width: 50%; margin-left: 25%; top: 2%;\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h5 class=\"card-title\">Nom du produit</h5>\n");
      out.write("                    <p class=\"card-text\">Les caractéristiques du produit</p>\n");
      out.write("                    <p class=\"card-text\"><s>Ancien prix</s> - Nouveau prix</p>\n");
      out.write("                    <a href=\"produit.jsp\" class=\"btn btn-light-blue\">Détails</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-footer\">\n");
      out.write("                    <div>\n");
      out.write("                        <small class=\"text-muted\">Quantité en stock :</small>\n");
      out.write("                        <br>\n");
      out.write("                        <small class=\"text-muted\">Valeur</small>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"produit.jsp\" class=\"btn btn-tb btn-blue-grey\">Ajouter au panier</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <br>\n");
      out.write("                <img class=\"card-img-top\" src=\"images/customer-service.svg\" alt=\"Card image cap\" style=\"position: relative; width: 50%; margin-left: 25%; top: 2%;\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h5 class=\"card-title\">Nom du produit</h5>\n");
      out.write("                    <p class=\"card-text\">Les caractéristiques du produit</p>\n");
      out.write("                    <p class=\"card-text\"><s>Ancien prix</s> - Nouveau prix</p>\n");
      out.write("                    <a href=\"produit.jsp\" class=\"btn btn-light-blue\">Détails</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-footer\">\n");
      out.write("                    <div>\n");
      out.write("                        <small class=\"text-muted\">Quantité en stock :</small>\n");
      out.write("                        <br>\n");
      out.write("                        <small class=\"text-muted\">Valeur</small>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"produit.jsp\" class=\"btn btn-tb btn-blue-grey\">Ajouter au panier</a>\n");
      out.write("                </div>  \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br><hr style=\"position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;\"><br>\n");
      out.write("        <p style=\"text-align: center; font-family: verdana; font-size: 2em;\">Nos services</p>\n");
      out.write("        <p style=\"text-align: center; font-family: verdana; font-size: 1em;\">Reservé aux personnels</p>\n");
      out.write("        <div class=\"card-deck\" style=\"position: relative; text-align: center; width: 80%; margin-left: 20%;\">\n");
      out.write("            <a class=\"btn btn-default\" href=\"loginMagasin.jsp\" style=\"position: relative; width: 18%;\">\n");
      out.write("                <img src=\"images/customer-service.svg\" style=\"position: relative; width: 50%;\" />\n");
      out.write("                <br><br>\n");
      out.write("                <p style=\"text-align: center; font-family: verdana; font-size: 1.2em;\">Magasin</p>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"btn btn-default\" href=\"loginAchat.jsp\" style=\"position: relative; width: 18%;\">\n");
      out.write("                <img src=\"images/clipboard.svg\" style=\"position: relative; width: 50%;\" />\n");
      out.write("                <br><br>\n");
      out.write("                <p style=\"text-align: center; font-family: verdana; font-size: 1.2em;\">Achat</p>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"btn btn-default\" href=\"loginVente.jsp\" style=\"position: relative; width: 18%;\">\n");
      out.write("                <img src=\"images/shopping-basket.svg\" style=\"position: relative; width: 50%;\" />\n");
      out.write("                <br><br>\n");
      out.write("                <p style=\"text-align: center; font-family: verdana; font-size: 1.2em;\">Vente</p>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"btn btn-default\" href=\"loginComptabilite.jsp\" style=\"position: relative; width: 18%;\">\n");
      out.write("                <img src=\"images/cash-register.svg\" style=\"position: relative; width: 50%;\" />\n");
      out.write("                <br><br>\n");
      out.write("                <p style=\"text-align: center; font-family: verdana; font-size: 1.2em;\">Comptabilité</p>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("        <br><hr style=\"position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;\"><br>\n");
      out.write("        \n");
      out.write("        <!-- Importation du fichier footer.jsp -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("        <!-- Importation du fichier body.jsp -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "body.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("    </body>    \n");
      out.write("    \n");
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
