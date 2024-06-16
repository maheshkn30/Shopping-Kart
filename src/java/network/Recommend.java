/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package network;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/Recommends")
@MultipartConfig(maxFileSize = 16177215)
public class Recommend extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/mahe";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

           String name = request.getParameter("name");
        String proname = request.getParameter("proname");
        String price = request.getParameter("price");
        String size = request.getParameter("size");
        String prod = request.getParameter("prod");
        String gen = request.getParameter("gname");
        
       // System.out.println("User Reg :" + uname + email + pass + age + edu + interest + country + gen + marital);
        InputStream inputStream = null;
        Part filePart = request.getPart("pic");
        if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO product (name, proname, price, size, prod, gen, photo) values (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, proname);
            statement.setString(3, price);
            statement.setString(4, size);
            statement.setString(5, prod);
            statement.setString(6, gen);
            

            if (inputStream != null) {
                statement.setBlob(7, inputStream);
            }

            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("product updated succesfully");
                response.sendRedirect("product.jsp?msg=success");
            } else {
                response.sendRedirect("product.jsp?reg=Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}