package TED03;

import java.util.Date;

public class Cliente extends Pessoa{

    private Profissao profissao;

    public Cliente(String nome, Date dataNascimento, Endereco endereco, Telefone telsContato, Cargo cargo, Profissao profissao) {
        super(nome, dataNascimento, endereco, telsContato, cargo);
        this.profissao = profissao;
    }

    public Profissao getProfissao() {
        return profissao;
    }

    public void setProfissao(Profissao profissao) {
        this.profissao = profissao;
    }
}
