import java.util.Scanner;

public class Ex11 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // inputs request
        System.out.print("Introduza:\n A: ");
        double a = KB.nextDouble();
        System.out.print("Introduza:\n B: ");
        double b = KB.nextDouble();
        System.out.print("Introduza:\n C: ");
        double c = KB.nextDouble();

        double delta = Math.pow(b,2)-4*a*c;

        double x1 = (-b-Math.sqrt(delta))/(2*a);
        double x2 = (-b+Math.sqrt(delta))/(2*a);

        System.out.printf("%nA solução é x=%.2f e x=%.2f %n",x1,x2);
    }
}
