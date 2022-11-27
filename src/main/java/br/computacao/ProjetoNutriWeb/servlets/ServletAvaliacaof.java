package br.computacao.ProjetoNutriWeb.servlets;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.computacao.ProjetoNutriWeb.dao.AvaliacaoFisicaDao;
import br.computacao.ProjetoNutriWeb.model.AvaliaFisica;

/**
 * Servlet implementation class ServletAvaliacaof
 */
@WebServlet({ "/ServletAvaliacaof", "/controlleravaliacaof" })
public class ServletAvaliacaof extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAvaliacaof() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AvaliacaoFisicaDao dao = new AvaliacaoFisicaDao();
		
		long avaliacaofid = Long.parseLong(request.getParameter("id"));
		AvaliaFisica delAvaliacaof = dao.findById(AvaliaFisica.class, avaliacaofid).get();
		
		dao.delete(delAvaliacaof);
		response.sendRedirect("consultaAvaliacaof.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AvaliacaoFisicaDao dao= new AvaliacaoFisicaDao();
		if(request.getParameter("nutricionistaid")==null) {
			AvaliaFisica novoAvaliaFisica = new AvaliaFisica();
			novoAvaliaFisica.setPeso(Float.parseFloat(request.getParameter("peso")));
			novoAvaliaFisica.setAltura(Float.parseFloat(request.getParameter("altura")));
			novoAvaliaFisica.setDataInicio(LocalDate.parse(request.getParameter("dataInicio")));
			novoAvaliaFisica.setNomeNutri(request.getParameter("nomeNutri"));
			novoAvaliaFisica.setNomePac(request.getParameter("nomePac"));
			novoAvaliaFisica.setImc(Float.parseFloat(request.getParameter("imc")));
			novoAvaliaFisica.setMassaG(Float.parseFloat(request.getParameter("massaG")));
			novoAvaliaFisica.setMassaM(Float.parseFloat(request.getParameter("massaM")));
			novoAvaliaFisica.setPesoIdeal(Float.parseFloat(request.getParameter("pesoIdeal")));
			dao.save(novoAvaliaFisica);
		}else {
			long avaliacaofid = Long.parseLong(request.getParameter("avaliacaofid"));
			AvaliaFisica avaliaFisica = dao.findById(AvaliaFisica.class, avaliacaofid).get();
			avaliaFisica.setPeso(Float.parseFloat(request.getParameter("peso")));
			avaliaFisica.setAltura(Float.parseFloat(request.getParameter("altura")));
			avaliaFisica.setDataInicio(LocalDate.parse(request.getParameter("dataInicio")));
			avaliaFisica.setNomeNutri(request.getParameter("nomeNutri"));
			avaliaFisica.setNomePac(request.getParameter("nomePac"));
			avaliaFisica.setImc(Float.parseFloat(request.getParameter("imc")));
			avaliaFisica.setMassaG(Float.parseFloat(request.getParameter("massaG")));
			avaliaFisica.setMassaM(Float.parseFloat(request.getParameter("massaM")));
			avaliaFisica.setPesoIdeal(Float.parseFloat(request.getParameter("pesoIdeal")));
			dao.update(avaliaFisica);
		}
		response.sendRedirect("consultaAvaliacaof.jsp");
	}

}
