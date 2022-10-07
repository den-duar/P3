package VA1;

public class Utilitario{


    public void duplica(RepositorioImp a, RepositorioImp b){
        for(Pessoa p: a.getLista()){
            b.guarda(p);
        }
    }

    public void diferenca(RepositorioImp a, RepositorioImp b, RepositorioImp c){
        for(int i = 0; i < a.getLista().size(); i++){
            if(!b.getLista().contains(a.getLista().get(i))){
                c.guarda(a.getLista().get(i));
            }
        }
    }
}
