package TED03;

import java.util.Date;

public class Aplicacao {

    public static void main(String[] args) {
        Cliente cli1 = new Cliente("Angelo", new Date(85,10,10), new Endereco("Rua do iesp"), new Telefone("83912345678"), new Cargo("Professor"), new Profissao("Professor"));
        Funcionario func1 = new Funcionario("Dennis", new Date(93,02,04), new Endereco("Rua Golfo de Lion"), new Telefone("83988199746"), new Cargo ("vendedor"), 1000);

        System.out.println(cli1.obterIdadade());
        System.out.println(func1.obterIdadade());
        System.out.println("O salario de " + func1.getNome() + " é: " + func1.getSalario());
        func1.reajustarSalario(10);
        System.out.println("O salario de " + func1.getNome() + " apos o ajuste, é: " + func1.getSalario());
        System.out.println("O cliente " + cli1.getNome() + " tem a profissão de: " + cli1.getProfissao().getProfissao());
    }
}
