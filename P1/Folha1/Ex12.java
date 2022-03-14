import java.util.Scanner;

public class Ex12 {
  public static void main(String[] args){
    Scanner scanner = new Scanner(System.in);
    
    System.out.print("\nValor em segundos: ");
    int allSeconds = scanner.nextInt();

    int hours = allSeconds/3600;
    int minutes = (allSeconds / 60) % 60;
    int seconds = allSeconds%60;

    System.out.printf("%n%02d:%02d:%02d%n%n",hours,minutes,seconds);

    scanner.close();
  }
}