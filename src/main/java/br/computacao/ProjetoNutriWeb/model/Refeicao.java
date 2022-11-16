package br.computacao.ProjetoNutriWeb.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Refeicao {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String cafe1;
	private String cafe2;
	private String almoco;
	private String cafeT1;
	private String cafeT2;
	private String jantar;
	
}
