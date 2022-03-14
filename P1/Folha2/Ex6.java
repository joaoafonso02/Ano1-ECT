import java.util.Scanner;

public class Ex6 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // request input
        System.out.print("\n\nNúmero: ");
        double num = KB.nextDouble();

        double rest = num%2;
        if(rest==1){
            System.out.print("\nNumero Impar\n\n");
        }else{
            System.out.print("\nNumero Par\n\n");
        }
    }
}
