import static java.lang.System.*;
import java.util.*;

public class ExcecoesDiv0 {
    static final Scanner input = new Scanner(in);
          
    public static void main(String[] args) {
        int n, d, r;
        out.print("n? ");
        n = input.nextInt();
        out.print("d? ");
        d = input.nextInt();

        r = n / d;
        out.println(n + " / " + d + " = " + r);

    }
}
