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
	
	public Refeicao() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCafe1() {
		return cafe1;
	}

	public void setCafe1(String cafe1) {
		this.cafe1 = cafe1;
	}

	public String getCafe2() {
		return cafe2;
	}

	public void setCafe2(String cafe2) {
		this.cafe2 = cafe2;
	}

	public String getAlmoco() {
		return almoco;
	}

	public void setAlmoco(String almoco) {
		this.almoco = almoco;
	}

	public String getCafeT1() {
		return cafeT1;
	}

	public void setCafeT1(String cafeT1) {
		this.cafeT1 = cafeT1;
	}

	public String getCafeT2() {
		return cafeT2;
	}

	public void setCafeT2(String cafeT2) {
		this.cafeT2 = cafeT2;
	}

	public String getJantar() {
		return jantar;
	}

	public void setJantar(String jantar) {
		this.jantar = jantar;
	}
	
}
