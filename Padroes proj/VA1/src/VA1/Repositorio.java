package VA1;

public interface Repositorio {

    public void guarda(Pessoa p);
    public Pessoa recupera(String cpf);
    public Pessoa primeiro();
    public Pessoa proximo();
}
