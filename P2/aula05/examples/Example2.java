import static java.lang.System.*;

// Corre normalmente se chamado sem argumentos.
// Lança excepção se tiver argumentos.
// Usa try..catch.
public class Example2 {
  private static String arg = null;

  public static void main(String[] args) {
    if (args.length > 0) arg = args[0];
    out.println("[main]: start");
    p1();
    out.println("[main]: end");
  }

  static void p1() {
    try {
      out.println("[p1]: start");
      p2();
      out.println("[p1]: end");
    }
    catch(RuntimeException e) {
      err.println("[p1]: caught " + e);
    }
    out.println("[p1]: really end");
  }

  static void p2() {
    try {
      out.println("[p2]: start");
      p3();
      out.println("[p2]: end");
    }
    catch(Error e) {  // RuntimeException is not an Error!
      err.println("[p2]: caught " + e);
    }
    out.println("[p2]: really end");
  }

  static void p3() {
    out.println("[p3]: start");
    if (arg != null)
      throw new RuntimeException(arg);
    out.println("[p3]: end");
  }

}
