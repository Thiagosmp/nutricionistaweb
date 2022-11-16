package br.computacao.ProjetoNutriWeb.model;
import java.util.ArrayList;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Nutricionista {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String nome;
	@Column(unique = true)
	private String email;
	private char sexo;
	@Enumerated(EnumType.STRING)
	private Status status;
	ArrayList<AvaliaFisica> avaliacaoN = new ArrayList<AvaliaFisica>();
	
	
}
