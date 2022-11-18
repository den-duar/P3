public class AdaptaVoltagem extends Tomada220v {

    private Tomada110v tomada110v;

    public AdaptaVoltagem(Tomada110v tomada110v){
        this.tomada110v = tomada110v;
    }

    public void ligarTomada220v(){
        tomada110v.ligar110v();
    }
}
