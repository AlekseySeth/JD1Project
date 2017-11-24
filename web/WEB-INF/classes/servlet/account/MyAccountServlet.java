package servlet.account;

import entity.user.Role;
import entity.user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static util.ServletUtil.getPath;

/**
 * @author a.shestovsky
 */
@WebServlet(urlPatterns = "/my-account", name = "MyAccount")
public class MyAccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            resp.sendRedirect("/sign-in");
        }

        if (user.getRole().equals(Role.ADMIN)) {
            req.getServletContext().getRequestDispatcher(getPath("admin")).forward(req, resp);
        } else if (user.getRole().equals(Role.MARKETER)) {
            req.getServletContext().getRequestDispatcher(getPath("marketer")).forward(req, resp);
        } else if (user.getRole().equals(Role.VIP_CUSTOMER)) {
            req.getServletContext().getRequestDispatcher(getPath("vip-customer")).forward(req, resp);
        } else {
            req.getServletContext().getRequestDispatcher(getPath("customer")).forward(req, resp);
        }
    }
}
