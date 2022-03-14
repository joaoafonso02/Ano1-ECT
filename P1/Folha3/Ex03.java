import java.util.Scanner;

public class Ex03 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        while(true){
            System.out.print("\nIntroduza numero inteiro: ");
            int n = KB.nextInt();
                
            if( n>0 && n<=10 ){

                System.out.print("\n\n");

                for(int i=0; i<n ;i++){
                    int a = 1;
                    for(int j=1; j<=i ;j++){
                        a*=j+1;
                    }
                    System.out.printf("%d! = %d\n", i+1, a);
                }

                System.out.print("\n\n");

                break;
            }else{
                System.out.print("\nNumero introduzido inválido! Tente outra vez.\n");
            }
        }
    }
}
