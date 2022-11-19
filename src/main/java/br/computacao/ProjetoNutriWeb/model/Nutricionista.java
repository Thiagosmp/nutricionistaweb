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
	public Nutricionista() {
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public char getSexo() {
		return sexo;
	}
	public void setSexo(char sexo) {
		this.sexo = sexo;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	public ArrayList<AvaliaFisica> getAvaliacaoN() {
		return avaliacaoN;
	}
	public void setAvaliacaoN(ArrayList<AvaliaFisica> avaliacaoN) {
		this.avaliacaoN = avaliacaoN;
	}
	
	
}
