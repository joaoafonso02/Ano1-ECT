import java.util.Scanner;

public class Ex2 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // request inputs
        System.out.print("\nPrimeiro número: ");
        double a = KB.nextDouble();
        System.out.print("Segundo número: ");
        double b = KB.nextDouble();

        if(a>b){
            System.out.println("\nMaior número: "+a+"\n");
        }else if(a<b){
            System.out.println("\nMaior número: "+b+"\n");
        }else{
            System.out.println("\nOs números são iguais!\n");
        }

    }
}
