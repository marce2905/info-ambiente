package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sl_formulario
 */
@WebServlet("/Sl_formulario")
public class Sl_formulario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sl_formulario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int opc = Integer.parseInt(request.getParameter("opc"));
		String ciudadNombre = request.getParameter("ciudadNombre");
		
		request.getSession().setAttribute("opc", opc);
		request.getSession().setAttribute("ciudadNombre", ciudadNombre);
		
		int indus = Integer.parseInt(request.getParameter("indus")==null?"0":request.getParameter("indus"));
		int contamInsdus = Integer.parseInt(request.getParameter("contamInsdus")==null?"0":request.getParameter("contamInsdus"));
		int hidri = Integer.parseInt(request.getParameter("hidri")==null?"0":request.getParameter("hidri"));
		int contamHidri = Integer.parseInt(request.getParameter("contamHidri")==null?"0":request.getParameter("contamHidri"));
		int botanBasura = Integer.parseInt(request.getParameter("botanBasura")==null?"0":request.getParameter("botanBasura"));
		
		request.getSession().setAttribute("indus", indus);
		request.getSession().setAttribute("contamInsdus", contamInsdus);
		request.getSession().setAttribute("hidri", hidri);
		request.getSession().setAttribute("contamHidri", contamHidri);
		request.getSession().setAttribute("botanBasura", botanBasura);
		
		switch (opc) {
		case 2:
			int actEcon = Integer.parseInt(request.getParameter("actEcon")==null?"0":request.getParameter("actEcon"));
			int despale= Integer.parseInt(request.getParameter("despale")==null?"0":request.getParameter("despale"));
			int porcentEcon = Integer.parseInt(request.getParameter("porcentEcon")==null?"0":request.getParameter("porcentEcon"));
			int servBas = Integer.parseInt(request.getParameter("servBas")==null?"0":request.getParameter("servBas"));
			request.getSession().setAttribute("actEcon", actEcon);
			request.getSession().setAttribute("despale", despale);
			request.getSession().setAttribute("porcentEcon", porcentEcon);
			request.getSession().setAttribute("servBas", servBas);
			break;
			
		case 3:
			int existAreas = Integer.parseInt(request.getParameter("existAreas")==null?"0":request.getParameter("existAreas"));
			int porcentAreas = Integer.parseInt(request.getParameter("porcentAreas")==null?"0":request.getParameter("porcentAreas"));
			int actVehic = Integer.parseInt(request.getParameter("actVehic")==null?"0":request.getParameter("actVehic"));
			int aguasN = Integer.parseInt(request.getParameter("aguasN")==null?"0":request.getParameter("aguasN"));
			int enegia = Integer.parseInt(request.getParameter("enegia")==null?"0":request.getParameter("enegia"));
			int tecno = Integer.parseInt(request.getParameter("tecno")==null?"0":request.getParameter("tecno"));
			
			request.getSession().setAttribute("existAreas", existAreas);
			request.getSession().setAttribute("porcentAreas", porcentAreas);
			request.getSession().setAttribute("actVehic", actVehic);
			request.getSession().setAttribute("aguasN", aguasN);
			request.getSession().setAttribute("enegia", enegia);
			request.getSession().setAttribute("tecno", tecno);
			break;
		default:
			break;
		}
		
		response.sendRedirect("lineaTiempo.jsp?msj=RESULTADOS");
	}
}
