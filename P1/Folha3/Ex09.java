import java.util.Scanner;

public class Ex09 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        while(true){
            System.out.print("\n\nIntroduza  N: ");
            int n = KB.nextInt();

            if( n<=0 || n>=1000 ){
                System.out.print("\n Numero invalido!\n");
                continue;
            }

            int soma = 0;
            for(int i=1; i<=n ;i++){
                System.out.print(i*2+" ");
                soma += i*2;
            }
            System.out.print("\nSoma: "+soma+"\n\n");
            break;
        }


    }
}
