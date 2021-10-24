import java.util.Scanner; 

public class p12 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.println("\nCálculo da nota final de Programaçãol II");

        double test1 = nota();
        double test2 = nota();
        double test3 = nota();
        double finalgrade = test1 * 0.2 + test2 * 0.3 + test3 * 0.5;

        if(test1 < 9.5 || test2 < 9.5 || test3 < 9.5) finalgrade = -66;

        if(finalgrade > 9.49) {
            System.out.printf("Aproved with %3.2f! Congrats man!!%n", finalgrade);
        } else System.out.printf("Not aproved with %3.2f! Better luck next time m8!!%n", finalgrade);

    }

    public static double nota(){
        double nota;
        do{
            System.out.print("test: ");
            nota = sc.nextDouble();
        }while(nota < 0 && nota > 20);

        return nota;
    }
}
