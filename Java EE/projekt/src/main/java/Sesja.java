import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/sesja")
public class Sesja extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public Sesja() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        HttpSession session = request.getSession();
         
        PrintWriter writer = response.getWriter();
        writer.println("Session ID: " + session.getId());
        System.out.println("ID sesji: " + session.getId());
        session.setAttribute("username", "Jan Kowalski");
	    System.out.println("Dodano atrybut: " + session.getAttribute("username"));
    }
}