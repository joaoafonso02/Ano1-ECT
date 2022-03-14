import java.util.Scanner;

public class Ex02 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("\nIntroduza uma lista de números (terminada com 0):\n");

        double product = 1;
        double n = 1;
        do{
            n = KB.nextDouble();
            if( n==0 ){
                System.err.print("Erro numero invalido");
                break;
            }
            product *= n;
        }while( n!=0 );
        
        System.out.printf("Produto = %.3f\n\n", product);
    }
}
