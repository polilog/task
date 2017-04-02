package servlets;

import model.main.Cook;
import model.main.FruitSaladCook;
import model.main.VegetableSaladCook;
import model.salads.Salad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/salads", loadOnStartup = 1)
public class SaladsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cook[] cooks = {new VegetableSaladCook(), new FruitSaladCook()};
        List<Salad> salads = new ArrayList<>();
        for(Cook cook : cooks) {
            Salad salad = cook.createSalad();
            salads.add(salad);
        }
        request.setAttribute("salads", salads);
        request.getRequestDispatcher("/salads.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
    }
}
