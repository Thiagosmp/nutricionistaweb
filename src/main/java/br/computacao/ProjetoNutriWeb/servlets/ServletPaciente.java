package br.computacao.ProjetoNutriWeb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.ProjetoNutriWeb.dao.PacienteDao;
import br.computacao.ProjetoNutriWeb.model.Paciente;

/**
 * Servlet implementation class ServletPaciente
 */
@WebServlet({ "/ServletPaciente", "/controllerPaciente" })
public class ServletPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPaciente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PacienteDao dao = new PacienteDao();
		
		long pacienteid = Long.parseLong(request.getParameter("id"));
		Paciente delPaciente = dao.findById(Paciente.class, pacienteid).get();
		
		dao.delete(delPaciente);
		response.sendRedirect("consultaPaciente.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PacienteDao dao= new PacienteDao();
		if(request.getParameter("pacienteid")==null) {
			Paciente novoPaciente = new Paciente();
			novoPaciente.setNome(request.getParameter("nome"));
			novoPaciente.setIdade(Integer.parseInt(request.getParameter("idade")));
			// falta colocar o resto
			//novoPaciente.setModalidade(Modalidade.valueOf(request.getParameter("modalidade").toUpperCase()));
			dao.save(novoPaciente);
		}else {
			long pacienteid = Long.parseLong(request.getParameter("pacienteid"));
			Paciente paciente = dao.findById(Paciente.class, pacienteid).get();
			
			paciente.setNome(request.getParameter("nome"));
			paciente.setIdade(Integer.parseInt(request.getParameter("idade")));
			// falta o resto
			dao.update(paciente);
		}
		response.sendRedirect("consultaPaciente.jsp");
	}

}
