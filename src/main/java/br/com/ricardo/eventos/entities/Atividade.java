package br.com.ricardo.eventos.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "tb_atividade")
public class Atividade {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nome;
	private String descricao;
	private Double preco;

	@ManyToMany
	@JoinTable(name = "tb_atividade_participante",
			joinColumns = @JoinColumn(name = "atividade_id"),
			inverseJoinColumns = @JoinColumn(name = "participante_id"))
	private List<Participante> participantes = new ArrayList<>();

	@ManyToOne
	private Categoria categoria;

	@OneToMany(mappedBy = "atividade")
	private List<Bloco> blocos = new ArrayList<>();

}
