import java.util.Scanner;

public class Ex10 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        while(true){
            System.out.print("\nIntroduza N: ");
            int n = KB.nextInt();

            if( n<1 ){
                System.out.print("\nN invalido\n");
                continue;
            }

            int soma = 0;
            for(int i=1; n-soma>0 ;i++){
                soma += i;
            }

            if( n-soma==0 ){
                System.out.print("\n\nNumero perfeito!\n\n");
            }else{
                System.out.print("\n\nNumero nao perfeito\n\n");
            }
            break;
        }
    }
}
