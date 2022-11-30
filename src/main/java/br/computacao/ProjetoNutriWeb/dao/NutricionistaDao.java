package br.computacao.ProjetoNutriWeb.dao;
import javax.persistence.TypedQuery;

import br.computacao.ProjetoNutriWeb.model.Nutricionista;

public class NutricionistaDao extends Dao<Nutricionista, Long>{
	public Nutricionista login(String user, String cpf) {
		Nutricionista employee;
		try {
			TypedQuery<Nutricionista> query=em.createQuery("SELECT e FROM Nutricionista e WHERE e.email = ?1 and e.password = ?2",
					Nutricionista.class);
			query.setParameter(1, user);
			query.setParameter(2, cpf);
			
			employee = query.getSingleResult();
		} catch (Exception e) {
			employee = null;
		}
		return employee;
	}
}
