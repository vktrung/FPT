/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.brand;
import model.category;
import model.product;

/**
 *
 * @author dell
 */
public class CheckBoxProduct extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckBoxProduct</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckBoxProduct at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String[] id_raw = request.getParameterValues("id");
        if (id_raw == null) {
            response.sendRedirect("shop");
        } else {
            int[] id = null;
            if (id_raw != null) {
                id = new int[id_raw.length];
                for (int i = 0; i < id.length; i++) {
                    id[i] = Integer.parseInt(id_raw[i]);
                }
            }
            ProductDAO dao = new ProductDAO();
            List<product> list = dao.checkProduct(id);
            request.setAttribute("listP", list);

            List<brand> blist = dao.getAllBrand();
            boolean[] bid = new boolean[blist.size()];
            for (int i = 0; i < bid.length; i++) {
                if (ischeck(blist.get(i).getBrand_id(), id)) {
                    bid[i] = true;
                } else {
                    bid[i] = false;
                }
            }
            List<category> listC = dao.getAllCategory();
//        List<brand> listB = dao.getAllBrand();
            List<String> listPS = dao.getAllProductSizes();

            request.setAttribute("listC", listC);
//        request.setAttribute("listB", listB);
            request.setAttribute("listPS", listPS);
            request.setAttribute("listB", blist);
            request.setAttribute("bid", bid);
            request.getRequestDispatcher("Shop.jsp").forward(request, response);
        }
    }

    private boolean ischeck(int d, int[] id) {
        if (id == null) {
            return false;
        } else {
            for (int i = 0; i < id.length; i++) {
                if (id[i] == d) {
                    return true;
                }
            }
            return false;
        }
    
    }
    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
