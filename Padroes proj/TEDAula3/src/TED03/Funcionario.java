package TED03;

import java.time.Instant;
import java.util.Date;

public class Funcionario extends Pessoa {

    private double salario;
    private Date dataAdmissao;

    public Funcionario(String nome, Date dataNascimento, Endereco endereco, Telefone telsContato, Cargo cargo, double salario) {
        super(nome, dataNascimento, endereco, telsContato, cargo);
        this.salario = salario;
        this.dataAdmissao = Date.from(Instant.now());
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public Date getDataAdmissao() {
        return dataAdmissao;
    }

    public void reajustarSalario(double porcentagem){
        this.setSalario(this.salario + this.salario * porcentagem/100);
    }
}
