import java.util.Scanner;

public class Ex7 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // request inputs
        System.out.print("\n\n1º Numero: ");
        int a = KB.nextInt();
        System.out.print("2º Numero: ");
        int b = KB.nextInt();
        System.out.print("3º Numero: ");
        int c = KB.nextInt();

        int max = Math.max(Math.max(a, b), Math.max(a, c));
        System.out.print("\nO maior numero é o "+max+"\n\n");
    }
}
