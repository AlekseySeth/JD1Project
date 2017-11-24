package servlet.account;

import entity.user.Role;
import entity.user.User;
import service.AuthenticationService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

/**
 * @author a.shestovsky
 */
@WebServlet(urlPatterns = "/registration", name = "Registration")
public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        String originalPassword = req.getParameter("password");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        Date registrationDate = new Date(System.currentTimeMillis());
        Role role = Role.CUSTOMER;

        String encryptedPassword = AuthenticationService.newInstance().encryptPassword(email, originalPassword);

        User newUser = UserService.newInstance().createNewUser(
                new User(firstName, lastName, email, encryptedPassword, phone, address, registrationDate, role));


        if (newUser.getId() == null) {
//            сообщение об ошибке при регистрации пользователя
        }


    }
}