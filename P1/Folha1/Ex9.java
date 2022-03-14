import java.util.Scanner;

public class Ex9 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.print("\n\nComprimento: ");
        double comprimento = scanner.nextDouble();

        System.out.print("Altura: ");
        double altura = scanner.nextDouble();

        System.out.printf("%nPerimetro = %.2f%nAltura = %.2f%n%n", comprimento*2+altura*2,comprimento*altura);

        scanner.close();
    }
}