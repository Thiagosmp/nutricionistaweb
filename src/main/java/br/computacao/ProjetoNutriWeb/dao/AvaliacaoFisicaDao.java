package br.computacao.ProjetoNutriWeb.dao;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import br.computacao.ProjetoNutriWeb.model.AvaliaFisica;

public class AvaliacaoFisicaDao extends Dao<AvaliaFisica, Long>{
	public List<Long> getPacientesByAvaliacaoId(Long id){
		System.out.println(id+"sadad");
		List <Long> avaliacoes = new ArrayList<Long>();
		try {
			TypedQuery<Long>query=em.createQuery("SELECT id FROM AvaliaFisica WHERE paciente_id=?1",Long.class);
			query.setParameter(1, id);
			avaliacoes=query.getResultList();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		for(Long idav:avaliacoes) {
			System.out.println(idav+"avaliacoesid");
		}
		return avaliacoes;
	}
}
