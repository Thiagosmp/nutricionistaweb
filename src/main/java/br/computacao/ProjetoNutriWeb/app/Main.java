package br.computacao.ProjetoNutriWeb.app;
import javax.persistence.EntityManager;

import br.computacao.ProjetoNutriWeb.util.JpaUtil;

public class Main {

	public static void main(String[] args) {
		EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();

	}
}
