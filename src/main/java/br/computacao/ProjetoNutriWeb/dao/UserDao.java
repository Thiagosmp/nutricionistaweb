package br.computacao.ProjetoNutriWeb.dao;

import javax.persistence.TypedQuery;

import br.computacao.ProjetoNutriWeb.model.Nutricionista;

public class UserDao extends Dao<Nutricionista, Long>{
	public Nutricionista login(String email, String cpf) {
		Nutricionista employee;
		try {
			TypedQuery<Nutricionista> query = em.createQuery("SELECT e FROM Usuario e WHERE e.email = ?1 and e.cpf = ?2",
					Nutricionista.class);
			query.setParameter(1, email);
			query.setParameter(2, cpf);
			
			employee = query.getSingleResult();
		} catch (Exception e) {
			employee = null;
		}
		
		return employee;
	}
}
