package com.vendor.controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import com.vendor.model.CampaignDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author T460
 */
public class AddCampaignTask extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            ArrayList<CampaignDAO> CampaignList = new ArrayList<>();
            int id = Integer.parseInt(request.getParameter("id"));
            CampaignDAO cdao = new CampaignDAO();
            cdao.setVendor_Id(id);
            cdao.setMaximum_appointment(1);
            HttpSession session = request.getSession();
            ArrayList<CampaignDAO> campaign_list = (ArrayList<CampaignDAO>) session.getAttribute("campaign-list");
            System.out.println("first call");
            if (campaign_list == null) {
                CampaignList.add(cdao);
                System.out.println("second call");
                session.setAttribute("campaign-list", CampaignList); // Corrected attribute name
                response.sendRedirect("VendorHomePage.jsp");
            } else {
                CampaignList = campaign_list;
                System.out.println("third call");
                boolean exist = false;
                for (CampaignDAO c : campaign_list) {
                    if (c.getVendor_Id() == id) {
                        System.out.println("fourth call");
                        exist = true;
                        out.println("<h3 style='color:crimson; text-align: center'>Campaign Already Added <a href='AddCampaign.jsp'>GO to Cart Page</a></h3>");
                        break; // No need to continue checking once found
                    }
                }
                if (!exist) {
                    CampaignList.add(cdao);
                    System.out.println("call");
                    session.setAttribute("campaign-list", CampaignList); // Corrected attribute name
                    System.out.println("ye vala hora call");
                    response.sendRedirect("VendorHomePage.jsp");
                }
            }
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
