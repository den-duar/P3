package VA1;

public class PessoaImp implements Pessoa{
    private String nome;
    private String cpf;


    public PessoaImp(String nome, String cpf) {
        this.nome = nome;
        this.cpf = cpf;
    }

    @Override
    public String getCpf() {
        return this.cpf;
    }

    @Override
    public String getNome() {
        return this.nome;
    }

    @Override
    public String toString(){
        return "nome: " + this.nome + "| cpf: " + this.cpf + "\n";
    }
}
