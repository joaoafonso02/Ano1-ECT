import java.util.Scanner;

public class Ex05 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("\n\nIntroduza Numero: ");
        double n = KB.nextDouble();

        double counter = 1;
        for(int i=2; i<n ;i++){
            counter *= n%i;
        }
        if( counter!=0 ){
            System.out.print("\nNumero primo!\n\n");
        }else{
            System.out.print("\nNumero nao primo!\n\n");
        }
    }
}
