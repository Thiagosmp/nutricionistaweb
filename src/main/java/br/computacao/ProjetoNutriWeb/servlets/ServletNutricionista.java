package br.computacao.ProjetoNutriWeb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.ProjetoNutriWeb.dao.NutricionistaDao;
import br.computacao.ProjetoNutriWeb.dao.PacienteDao;
import br.computacao.ProjetoNutriWeb.model.Nutricionista;
import br.computacao.ProjetoNutriWeb.model.Paciente;
import br.computacao.ProjetoNutriWeb.model.Status;

/**
 * Servlet implementation class ServletNutricionista
 */
@WebServlet({ "/ServletNutricionista", "/controllerNutricionista" })
public class ServletNutricionista extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletNutricionista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NutricionistaDao dao = new NutricionistaDao();
		
		long nutricionistaid = Long.parseLong(request.getParameter("id"));
		Nutricionista delNutricionista = dao.findById(Nutricionista.class, nutricionistaid).get();
		
		dao.delete(delNutricionista);
		response.sendRedirect("consultaNutricionista.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NutricionistaDao dao= new NutricionistaDao();
		if(request.getParameter("nutricionistaid")==null) {
			Nutricionista novoNutricionista = new Nutricionista();
			novoNutricionista.setNome(request.getParameter("nome"));
			novoNutricionista.setEmail(request.getParameter("email"));
			novoNutricionista.setSexo(request.getParameter("sexo").charAt(0));
			novoNutricionista.setStatus(Status.valueOf(request.getParameter("status").toUpperCase()));
			dao.save(novoNutricionista);
		}else {
			long nutricionistaid = Long.parseLong(request.getParameter("nutricionistaid"));
			Nutricionista nutricionista = dao.findById(Nutricionista.class, nutricionistaid).get();
			
			nutricionista.setNome(request.getParameter("nome"));
			nutricionista.setEmail(request.getParameter("email"));
			nutricionista.setSexo(request.getParameter("sexo").charAt(0));
			nutricionista.setStatus(Status.valueOf(request.getParameter("status").toUpperCase()));
			dao.update(nutricionista);
		}
		response.sendRedirect("consultaNutricionista.jsp");
	}

}
