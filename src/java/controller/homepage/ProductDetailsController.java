/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.homepage;

import dal.implement.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Product;

/**
 *
 * @author FPT
 */
public class ProductDetailsController extends HttpServlet {
   

    ProductDAO productDAO = new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //get ve id cua product
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = Product.builder().id(id).build();
        //lay product tu database
        Product productFoundById = productDAO.findById(product);
        //set param va grp ve product-details.jsp
        request.setAttribute("product", productFoundById);
        request.getRequestDispatcher("/view/homepage/product-details.jsp").forward(request, response);

    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
