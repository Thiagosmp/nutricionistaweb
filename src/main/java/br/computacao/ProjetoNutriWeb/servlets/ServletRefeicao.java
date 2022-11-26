package br.computacao.ProjetoNutriWeb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.ProjetoNutriWeb.dao.PacienteDao;
import br.computacao.ProjetoNutriWeb.dao.RefeicaoDao;
import br.computacao.ProjetoNutriWeb.model.Paciente;
import br.computacao.ProjetoNutriWeb.model.Refeicao;

/**
 * Servlet implementation class ServletRefeicao
 */
@WebServlet({ "/ServletRefeicao", "/controllerRefeicao" })
public class ServletRefeicao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRefeicao() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RefeicaoDao dao = new RefeicaoDao();
		
		long refeicaoid = Long.parseLong(request.getParameter("id"));
		Refeicao delRefeicao = dao.findById(Refeicao.class, refeicaoid).get();
		
		dao.delete(delRefeicao);
		response.sendRedirect("consultaRefeicao.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RefeicaoDao dao= new RefeicaoDao();
		if(request.getParameter("refeicaoid")==null) {
			Refeicao novaRefeicao = new Refeicao();
			novaRefeicao.setCafe1(request.getParameter("cafe1"));
			novaRefeicao.setCafe2(request.getParameter("cafe2"));
			novaRefeicao.setAlmoco(request.getParameter("almoco"));
			novaRefeicao.setCafeT1(request.getParameter("cafeT1"));
			novaRefeicao.setCafeT2(request.getParameter("cafeT2"));
			novaRefeicao.setJantar(request.getParameter("jantar"));
			dao.save(novaRefeicao);
		}else {
			long refeicaoid = Long.parseLong(request.getParameter("refeicaoid"));
			Refeicao refeicao = dao.findById(Refeicao.class, refeicaoid).get();
			refeicao.setCafe1(request.getParameter("cafe1"));
			refeicao.setCafe2(request.getParameter("cafe2"));
			refeicao.setAlmoco(request.getParameter("almoco"));
			refeicao.setCafeT1(request.getParameter("cafeT1"));
			refeicao.setCafeT2(request.getParameter("cafeT2"));
			refeicao.setJantar(request.getParameter("jantar"));
			dao.update(refeicao);
		}
		response.sendRedirect("consultaRefeicao.jsp");
	}

}
