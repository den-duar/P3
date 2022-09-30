import java.time.LocalTime;

public class DiaHora {


    private Dias dia;
    private LocalTime hora;

    public DiaHora(Dias dia, LocalTime hora) {
        this.dia = dia;
        this.hora = hora;
    }

    public Dias getDia() {
        return dia;
    }

    public void setDia(Dias dia) {
        this.dia = dia;
    }

    public LocalTime getHora() {
        return hora;
    }

    public void setHora(LocalTime hora) {
        this.hora = hora;
    }
}

