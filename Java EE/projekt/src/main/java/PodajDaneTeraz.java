

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PodajDaneTeraz
 */
@WebServlet("/PodajDaneTeraz")
public class PodajDaneTeraz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PodajDaneTeraz() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String imie = request.getParameter("imie");
		String nazwisko = request.getParameter("nazwisko");
		String plec = request.getParameter("plec");
		System.out.println("Imie: " + imie);
        System.out.println("Nazwisko: " + nazwisko);
        System.out.println("Plec: " + plec);
        PrintWriter writer = response.getWriter();
        response.getWriter().append("Imie: ").println(imie);
        response.getWriter().append("Nazwisko: ").println(nazwisko);
        response.getWriter().append("Plec: ").println(plec);
	}

}
