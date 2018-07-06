/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import informations.entreprise;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus R511L
 */
public class informations extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String pays;
            String ville;
            String site;
            String adresse;
            String postal;
            String nom;
            String telephone;
            String mail;
            int j;
            
            entreprise entreprise = new entreprise();
            RequestDispatcher rd = null;
            
            if(request.getParameter("enregistrerEntreprise")!=null) {
                nom = request.getParameter("nomEntreprise");
                pays = request.getParameter("paysEntreprise");
                ville = request.getParameter("villeEntreprise");
                site = request.getParameter("siteEntreprise");
                adresse = request.getParameter("adresseEntreprise");
                postal = request.getParameter("postalEntreprise");
                telephone = request.getParameter("telephoneEntreprise");
                mail = request.getParameter("mailEntreprise");
                j = entreprise.informations(pays, ville, nom, postal, adresse, site, telephone, mail);
                
                request.setAttribute("j", j);
                rd = request.getRequestDispatcher("parametres.jsp");
            }
            
            rd.forward(request, response);
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
