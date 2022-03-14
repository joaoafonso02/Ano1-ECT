import java.util.Scanner;

public class Ex14 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.printf("%n%nCateto A: ");
        double a = scanner.nextDouble();
        System.out.printf("Cateto B: ");
        double b = scanner.nextDouble();

        double c = Math.sqrt(Math.pow(a,2)+Math.pow(b, 2));
        double cos = Math.cos(a/c);

        System.out.printf("%nA hipotenusa = %.2f", c);
        System.out.printf("%nÂngulo entre A e C = %.2f%n%n", cos);

        scanner.close();
    }
}
