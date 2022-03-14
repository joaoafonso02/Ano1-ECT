import java.util.Scanner;

public class Ex11 {
  public static void main(String[] args){
    Scanner scanner = new Scanner(System.in);

    System.out.print("\n\nValor em Dólares: ");
    double dolares = scanner.nextDouble();

    System.out.print("Valor da taxa: ");
    double taxa = scanner.nextDouble();

    double euros = dolares*taxa;

    System.out.printf("%n%4.2f dólares equivalem a %4.2f euros%n%n", dolares, euros);
 
    scanner.close();
  }
}
