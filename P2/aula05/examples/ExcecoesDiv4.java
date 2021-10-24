import static java.lang.System.*;
import java.util.*;

public class ExcecoesDiv4 {
    static final Scanner input = new Scanner(in);
          
    public static void main(String[] args) {
        int n, d, r;
        boolean ok;
        do {    // Para voltar a tentar, caso haja excepções...
            ok = false;
            try {
                out.print("n? ");
                n = input.nextInt();
                out.print("d? ");
                d = input.nextInt();
                r = n / d;
                out.println(n + " / " + d + " = " + r);
                ok = true;        // tudo ok!
            } catch(ArithmeticException erro) {
                out.println("ERRO: " + erro.getMessage());
                //r = n / 1; //eventualmente ter uma resolucao para o erro
            } catch(InputMismatchException erro) {
                out.println("ERRO: valor deve ser inteiro");
                input.nextLine(); // descarta o resto da linha que deu erro
            }
            // podem eventualmente ser apanhados vários erros com Exception
            // ou catch (ArithmeticException | InputMismatchException e)
        } while (!ok);
        out.println("Fim do programa");
    }
}
