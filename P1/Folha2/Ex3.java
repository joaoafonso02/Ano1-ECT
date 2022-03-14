import java.util.Scanner;

public class Ex3 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // request input
        System.out.print("\nIdade: ");
        int age = KB.nextInt();

        if(age<6){
            System.out.print("\nIsento de pagamento.\n\n");
        }else if(age<12){
            System.out.print("\nBilhete de criança.\n\n");
        }else if(age<65){
            System.out.print("\nBilhete normal.\n\n");
        }else{
            System.out.print("\nBilhete de 3ª idade.\n\n");
        }
    }
}
