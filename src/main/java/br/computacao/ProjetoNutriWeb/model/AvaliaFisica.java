package br.computacao.ProjetoNutriWeb.model;
import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class AvaliaFisica {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private float peso;
	private float altura;
	@Column(name = "data_inicio", columnDefinition = "DATE")
	private LocalDate dataInicio;
	private float imc;
	private float massaG;
	private float massaM;
	private float pesoIdeal;
	@ManyToOne
	private Nutricionista nutricionista;
	@ManyToOne
	private Paciente paciente;
	
	public AvaliaFisica() {
		
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public float getPeso() {
		return peso;
	}
	public void setPeso(float peso) {
		this.peso = peso;
	}
	public float getAltura() {
		return altura;
	}
	public void setAltura(float altura) {
		this.altura = altura;
	}
	public LocalDate getDataInicio() {
		return dataInicio;
	}
	public void setDataInicio(LocalDate dataInicio) {
		this.dataInicio = dataInicio;
	}
	public float getImc() {
		return imc;
	}
	public void setImc(float imc) {
		this.imc = imc;
	}
	public float getMassaG() {
		return massaG;
	}
	public void setMassaG(float massaG) {
		this.massaG = massaG;
	}
	public float getMassaM() {
		return massaM;
	}
	public void setMassaM(float massaM) {
		this.massaM = massaM;
	}
	public float getPesoIdeal() {
		return pesoIdeal;
	}
	public void setPesoIdeal(float pesoIdeal) {
		this.pesoIdeal = pesoIdeal;
	}
	public Nutricionista getNutricionista() {
		return nutricionista;
	}
	public void setNutricionista(Nutricionista nutricionista) {
		this.nutricionista = nutricionista;
	}
	public Paciente getPaciente() {
		return paciente;
	}
	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
	
	
}
