import static java.lang.System.*;

// Corre normalmente se chamado sem argumentos.
// Lança excepção se tiver argumentos.
public class Example1 {
  private static String arg = null;

  public static void main(String[] args) {
    if (args.length > 0) arg = args[0];
    out.println("[main]: start");
    p1();
    out.println("[main]: end");
  }

  static void p1() {
    out.println("[p1]: start");
    p2();
    out.println("[p1]: end");
  }

  static void p2() {
    out.println("[p2]: start");
    p3();
    out.println("[p2]: end");
  }

  static void p3() {
    out.println("[p3]: start");
    if (arg != null)
      throw new RuntimeException(arg);
    out.println("[p3]: end");
  }

}
