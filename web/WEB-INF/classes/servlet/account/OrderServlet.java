package servlet.account;

import entity.order.Order;
import entity.user.User;
import service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static util.ServletUtil.getPath;

/**
 * @author a.shestovsky
 */
@WebServlet(urlPatterns = "/order", name = "OrderInfo")
public class OrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Order order = OrderService.newInstance().getOrderById(Long.valueOf(req.getParameter("orderId")));
        User user = (User) req.getSession().getAttribute("user");
        if (order.getUser().getId().equals(user.getId())) {
            req.getRequestDispatcher(getPath("order")).forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Order order = OrderService.newInstance()
                .getOrderById(Long.valueOf(req.getParameter("orderId")));
        req.getParameter("userId");
        req.setAttribute("order", order);

    }
}