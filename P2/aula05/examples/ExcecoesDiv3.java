import static java.lang.System.*;
import java.util.*;

public class ExcecoesDiv3 {
    static final Scanner input = new Scanner(in);
          
    public static void main(String[] args) {
        int n, d, r;
        try {
            out.print("n? ");
            n = input.nextInt();
            out.print("d? ");
            d = input.nextInt();
            r = n / d;
            out.println(n + " / " + d + " = " + r);
        } catch(ArithmeticException erro) {
            out.println("ERRO: " + erro.getMessage());
            //r = n / 1; //eventualmente ter uma resolucao para o erro
        } catch(InputMismatchException erro) {
            out.println("ERRO: valor deve ser inteiro");
        }
        out.println("Fim do programa");
    }
}
