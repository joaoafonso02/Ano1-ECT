import static java.lang.System.*;

import java.util.Scanner;


public class TestComplex {
  public static Scanner in = new Scanner(System.in);
  // Exemplo simples de utilização da class Complex
  public static void main(String[] args) {
    double b, c;
    if(args.length==0) {
      out.printf("Re: ");
      b = in.nextDouble();
      out.printf("Im: ");
      c = in.nextDouble();
    }else{
      b = args.length>=1 ? Double.parseDouble(args[0]) : 0;
      c = args.length>=2 ? Double.parseDouble(args[1]) : 0;
    }

    Complex a = new Complex(b, c);

    // Vamos usar métodos do objeto a
    out.printf("(%.2f+%.2fi)\n", a.real(), a.imag());
    out.println("  parte real = " + a.real());
    out.println("  parte imaginaria = " + a.imag());
    out.println("  modulo = " + a.abs());
    out.printf("  argumento = %.2f\n", a.arg());
  }

}
