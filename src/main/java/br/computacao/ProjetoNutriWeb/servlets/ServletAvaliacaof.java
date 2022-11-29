package br.computacao.ProjetoNutriWeb.servlets;
import java.io.IOException;
import java.text.DateFormat;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.DateFormatter;

import br.computacao.ProjetoNutriWeb.dao.AvaliacaoFisicaDao;
import br.computacao.ProjetoNutriWeb.dao.NutricionistaDao;
import br.computacao.ProjetoNutriWeb.dao.PacienteDao;
import br.computacao.ProjetoNutriWeb.model.AvaliaFisica;
import br.computacao.ProjetoNutriWeb.model.Nutricionista;
import br.computacao.ProjetoNutriWeb.model.Paciente;

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
		response.sendRedirect("ConsultaAvaliacao.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AvaliacaoFisicaDao dao= new AvaliacaoFisicaDao();
		PacienteDao pacienteDao = new PacienteDao();
		NutricionistaDao nutricionistaDao = new NutricionistaDao();
		if(request.getParameter("avaliacaofid")==null) {
			Long pacienteid = Long.parseLong(request.getParameter("paciente"));
			Long nutricionistaid = Long.parseLong(request.getParameter("nutricionista"));
			Paciente paciente = pacienteDao.findById(Paciente.class, pacienteid).get();
			Nutricionista nutricionista = nutricionistaDao.findById(Nutricionista.class, nutricionistaid).get();
			AvaliaFisica novoAvaliaFisica = new AvaliaFisica();
			Float altura = Float.parseFloat(request.getParameter("altura"));
			Float peso = Float.parseFloat(request.getParameter("peso"));
			Float imc = peso/(altura*altura);
			System.out.println(imc);
			novoAvaliaFisica.setPeso(Float.parseFloat(request.getParameter("peso")));
			novoAvaliaFisica.setAltura(Float.parseFloat(request.getParameter("altura")));
			novoAvaliaFisica.setIdade(Integer.parseInt(request.getParameter("idade")));
			novoAvaliaFisica.setDataInicio(LocalDate.parse(request.getParameter("dataInicio")));
			novoAvaliaFisica.setImc(imc);
			Integer idade = (Integer.parseInt(request.getParameter("idade")));
			Double porGordura=0.0;
			if(paciente.getSexo()=='F') {
				porGordura = (1.20*imc)+(0.23*idade)-(10.8*0)-5.4;
			}else {
				porGordura = (1.20*imc)+(0.23*idade)-(10.8*1)-5.4;
			}
			novoAvaliaFisica.setMassaG(porGordura);
			novoAvaliaFisica.setMassaM(Double.parseDouble(request.getParameter("massaM")));
			novoAvaliaFisica.setPesoIdeal(Float.parseFloat(request.getParameter("pesoIdeal")));
			novoAvaliaFisica.setPaciente(paciente);
			novoAvaliaFisica.setNutricionista(nutricionista);
			dao.save(novoAvaliaFisica);
		}else {
			long avaliacaofid = Long.parseLong(request.getParameter("avaliacaofid"));
			AvaliaFisica avaliaFisica = dao.findById(AvaliaFisica.class, avaliacaofid).get();
			avaliaFisica.setPeso(Float.parseFloat(request.getParameter("peso")));
			avaliaFisica.setAltura(Float.parseFloat(request.getParameter("altura")));
			avaliaFisica.setDataInicio(LocalDate.parse(request.getParameter("dataInicio")));
			avaliaFisica.setImc(Float.parseFloat(request.getParameter("imc")));
			avaliaFisica.setMassaG(Double.parseDouble(request.getParameter("massaG")));
			avaliaFisica.setMassaM(Double.parseDouble(request.getParameter("massaM")));
			avaliaFisica.setPesoIdeal(Float.parseFloat(request.getParameter("pesoIdeal")));
			dao.update(avaliaFisica);
		}
		response.sendRedirect("ConsultaAvaliacao.jsp");
	}

}
