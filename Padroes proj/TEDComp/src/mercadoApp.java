import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class mercadoApp {

    public static void main(String[] args) {
        String nome;
        double valor;
        DiaHora diaHora;
        String dia;
        String hora;
        Produto produto;
        Scanner input = new Scanner(System.in);

        System.out.println("Informe o nome do produto:");
        nome = input.nextLine();
        System.out.println("Informe o valor do produto:");
        valor = Double.parseDouble(input.nextLine());
        System.out.println("Informe o dia: (Ex: terca)");
        dia = input.nextLine().toUpperCase();
        System.out.println("Informe a hora, minutos e segundos: (Ex: 12:30:22)");
        hora = input.nextLine();
        diaHora = new DiaHora(Dias.valueOf(dia), LocalTime.parse(hora, DateTimeFormatter.ISO_TIME));
        produto = new Produto(nome, valor, diaHora);
        System.out.println("O valor do produto " + produto.getNome() + " para ser pago vai ser de: R$" + produto.valorDesconto());

    }
}
