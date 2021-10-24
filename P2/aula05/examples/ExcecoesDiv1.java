import static java.lang.System.*;
import java.util.*;

public class ExcecoesDiv1 {
    static final Scanner input = new Scanner(in);
          
    public static void main(String[] args) {
        int n, d, r;
        out.print("n? ");
        n = input.nextInt();
        out.print("d? ");
        d = input.nextInt();
        if (d != 0) {
            r = n / d;
            out.println(n + " / " + d + " = " + r);
        }
        else {
            out.println("ERRO: Nao pode dividir por 0");
        }
    }
}
