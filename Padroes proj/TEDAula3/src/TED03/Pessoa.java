package TED03;

import java.time.Instant;
import java.time.ZoneId;
import java.util.Date;
import java.time.LocalDate;
import java.time.Period;

public class Pessoa {

    private String nome;
    private Date dataNascimento;
    private Endereco endereco;
    private Telefone telsContato;
    private Cargo cargo;

    public Pessoa(String nome, Date dataNascimento, Endereco endereco, Telefone telsContato, Cargo cargo) {
        this.nome = nome;
        this.dataNascimento = dataNascimento;
        this.endereco = endereco;
        this.telsContato = telsContato;
        this.cargo = cargo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public Telefone getTelsContato() {
        return telsContato;
    }

    public void setTelsContato(Telefone telsContato) {
        this.telsContato = telsContato;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public String obterIdadade(){
        LocalDate hoje = LocalDate.now();
        return (this.nome + " tem " + Period.between(this.getDataNascimento().toInstant().atZone(ZoneId.systemDefault()).toLocalDate(),hoje).getYears() + " anos de idade.");
    }

    public void promover(Cargo novoCargo){
        this.setCargo(novoCargo);
    }


}
