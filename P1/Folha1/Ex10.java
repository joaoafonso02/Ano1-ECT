import java.util.Scanner;

public class Ex10 {
  public static void main(String[] args){
    Scanner scanner = new Scanner(System.in);

    System.out.print("\n\nValor em Celcius: ");
    double celcius = scanner.nextDouble();

    double fahrenheit = 1.8f*celcius+32;

    System.out.printf("%n%.2fº Celcius é equivalente a %.2fº Fahrenheit%n%n",celcius,fahrenheit);

    scanner.close();
  }
}
