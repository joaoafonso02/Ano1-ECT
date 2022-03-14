import java.util.Scanner;

public class Ex04 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        while(true){
            System.out.print("\nIntroduza numero inteiro: ");
            int n = KB.nextInt();
                
            if( n>0 ){

                System.out.print("\n");

                double a = 1;
                for(int i=2; i<=n ;i++){
                    if( i%2==0 ){
                        a -= 1.0/(i*2.0-1.0);
                    }else{
                        a += 1.0/(i*2.0-1.0);
                    }
                }
                System.out.printf("%.15f\n",a);
                System.out.print(Math.PI/4);

                System.out.print("\n\n");

                break;
            }else{
                System.out.print("\nNumero introduzido inválido! Tente outra vez.\n");
            }
        }
    }
}
