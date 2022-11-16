package br.computacao.ProjetoNutriWeb.model;
import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class AvaliaFisica {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private float peso;
	private float altura;
	@Column(name = "data_inicio", columnDefinition = "DATE")
	private LocalDate dataInicio;
	private String nomeNutri;
	private String nomePac;
	private float imc;
	private float massaG;
	private float massaM;
	private float pesoIdeal;
	@ManyToOne
	private Nutricionista nutricionista;
	@ManyToOne
	private Paciente paciente;
}
