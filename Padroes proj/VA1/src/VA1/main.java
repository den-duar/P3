package VA1;

public class main {
    public static void main(String[] args) {

        Utilitario u = new Utilitario();
        RepositorioImp a = new RepositorioImp();
        RepositorioImp b = new RepositorioImp();
        RepositorioImp c = new RepositorioImp();

        a.guarda(new PessoaImp("Dennis", "0000000"));
        a.guarda(new PessoaImp("Angelo", "11111"));
        System.out.println(a.proximo().getNome());
        System.out.println(a.proximo().getNome());
        u.duplica(a,b);
        System.out.println(b.proximo().getNome());
        System.out.println(b.proximo().getNome());
        a.guarda(new PessoaImp("Tulio", "222222"));
        System.out.println(a.proximo().getNome());
        u.diferenca(a,b,c);
        System.out.println(a.getLista().toString());
        System.out.println(b.getLista().toString());
        System.out.println(c.getLista().toString());
    }
}
