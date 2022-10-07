package VA1;

import java.util.ArrayList;

public class RepositorioImp implements Repositorio{

    private ArrayList<Pessoa> lista;
    private int contador;

    public RepositorioImp() {
        this.lista = new ArrayList<Pessoa>();
    }

    public ArrayList<Pessoa> getLista(){
        return this.lista;
    }

    @Override
    public void guarda(Pessoa p) {
        lista.add(p);
    }

    @Override
    public Pessoa recupera(String cpf) {
        for(Pessoa p:lista) {
            if(p.getCpf().equals(cpf)){
                return p;
            }
        }
        return null;
    }

    @Override
    public Pessoa primeiro() {
        return lista.get(0);
    }

    @Override
    public Pessoa proximo() {
        Pessoa proximo;
        if(this.contador < this.lista.size()){
            proximo =  this.lista.get(contador);
            this.contador += 1;
            return proximo;
        }else if(this.contador == lista.size()){
            this.contador = 0;
        }
        return null;
    }
}
