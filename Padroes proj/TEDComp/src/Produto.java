import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class Produto {

    private String nome;
    private double valorBruto;
    private DiaHora diaHora;


    public Produto(String nome, double valor, DiaHora diaHora) {
        this.nome = nome;
        this.valorBruto = valor;
        this.diaHora = diaHora;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getValorBruto() {
        return valorBruto;
    }

    public void setValorBruto(double valorBruto) {
        this.valorBruto = valorBruto;
    }

    public double valorDesconto(){
        LocalTime limite1 = LocalTime.parse("19:59:59", DateTimeFormatter.ISO_TIME);
        LocalTime limite2 = LocalTime.parse("23:59:59", DateTimeFormatter.ISO_TIME);

        if (this.diaHora.getDia() == Dias.SABADO || this.diaHora.getDia() == Dias.DOMINGO){
            return valorBruto * 0.9;
        } else if (this.diaHora.getHora().isAfter(limite1) && this.diaHora.getHora().isBefore(limite2)) {
            return valorBruto * 0.9;
        }
        return valorBruto;
    }
}
