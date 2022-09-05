package br.edu.iesp.api.entity;

import javax.persistence.Entity;

@Entity
public class Pessoa {
	
	private String nome;
	private int idade;
	
	public int getIdade() {
		return idade;
	}
	
	public void setIdade(int idade) {
		this.idade = idade;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
}
