package aula2;

public class Conta {
	int numero;
	String nome;
	double saldo;
	double limite;
	
	void sacar(double quantidade) {
		this.saldo = this.saldo - quantidade;	
	}
	
}
