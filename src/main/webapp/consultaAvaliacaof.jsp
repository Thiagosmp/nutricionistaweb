<%@page import="java.text.DecimalFormat"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.computacao.ProjetoNutriWeb.model.AvaliaFisica"%>
<%@page import="br.computacao.ProjetoNutriWeb.dao.AvaliacaoFisicaDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Consultar Avaliação</title>
</head>
<body>
	<%
	AvaliacaoFisicaDao dao = new AvaliacaoFisicaDao();
	Long id = Long.parseLong(request.getParameter("id"));
	List<Long> avaliacoesid = dao.getPacientesByAvaliacaoId(id);
	List<AvaliaFisica> avaliacoes = new ArrayList<AvaliaFisica>();
	for(Long avaliacaoid:avaliacoesid){
		AvaliaFisica avaliacaoFind=dao.findById(AvaliaFisica.class, avaliacaoid).get();
		avaliacoes.add(avaliacaoFind);
	}
	%>	
		<div class="contact1">
			<div class="container-contact1">
				<table class="table table-bordered">
				<a class="container-contact1-form-btn" href="consultaPaciente.jsp" style="text-decoration: none;">
					<button class="contact1-form-btn" style="margin-bottom: 2rem">
						<span>
							Voltar
							<i class="fa fa-long-arrow-right" aria-hidden="true" type="submit"></i>
						</span>
					</button>
				</a>
				<h2 style="margin-right: 20rem">Consultar Avaliação</h2>
					<thead>
						<tr>
							<th>Peso</th>
							<th>Altura</th>
							<th>Idade</th>
							<th>Data Inicio</th>
							<th>IMC</th>
							<th>Massa G</th>
							<th>Massa M</th>
							<th>Peso Ideal</th>
							<th>Paciente</th>
							<th>Nutricionista</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%
						for(AvaliaFisica avaliaFisica:avaliacoes){
						%>
						<tr>
							<td><%= avaliaFisica.getPeso() %></td>
							<td><%= avaliaFisica.getAltura()%></td>
							<td><%= avaliaFisica.getIdade() %></td>
							<td><%= avaliaFisica.getDataInicio()%></td>
							<td><%= avaliaFisica.getImc() %></td>
							<td><%= avaliaFisica.getMassaG() %></td>
							<td><%= avaliaFisica.getMassaM()%></td>
							<td><%= avaliaFisica.getPesoIdeal()%></td>
							<td><%= avaliaFisica.getPaciente().getNome() %></td>
							<td><%= avaliaFisica.getNutricionista().getNome() %></td>
							<td>
								<a class="btn btn-secondary btn-sm" style="font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"
								href="editavaliacaof.jsp?id=<%= avaliaFisica.getId()%>">Editar</a>
								<a class="btn btn-danger btn-sm" style="font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"
								href="<%= request.getContextPath()%>/controlleravaliacaof?id=<%=avaliaFisica.getId()%>">Excluir</a>
							</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
				<a class="container-contact1-form-btn" href="formavaliacaof.jsp" style="text-decoration: none;">
					<button class="contact1-form-btn">
						<span>
							Nova Avaliação Física
							<i class="fa fa-long-arrow-right" aria-hidden="true" type="submit"></i>
						</span>
					</button>
				</a>
			</div>
		</div>
</body>
</html>