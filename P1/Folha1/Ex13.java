import java.util.Scanner;

public class Ex13 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.printf("%n%nPonto A:%nx:");
        double x1 = scanner.nextDouble();
        System.out.printf("y:");
        double y1 = scanner.nextDouble();
        System.out.printf("%nPonto B:%nx:");
        double x2 = scanner.nextDouble();
        System.out.printf("y:");
        double y2 = scanner.nextDouble();

        double distance = dist(x1,y1,x2,y2);
        System.out.printf("%nA distância entre os dois pontos são: %.2fkm%n%n",distance);

        scanner.close();
    }

    public static double dist(double x1,double y1,double x2,double y2){
        return Math.sqrt(Math.pow(x2-x1,2)+Math.pow(y2-y1,2));
    }
}
