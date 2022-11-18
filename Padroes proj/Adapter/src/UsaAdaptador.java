import java.util.concurrent.ExecutionException;

public class UsaAdaptador {

    public static void main(String[] args) {
        Tomada220v t220v = new Tomada220v();
        Tomada110v t110v = new Tomada110v();

        t220v.ligar110v();
        t110v.ligar220v();

        AdaptaVoltagem adp = new AdaptaVoltagem(t110v);
        adp.ligarTomada220v();
    }
}
