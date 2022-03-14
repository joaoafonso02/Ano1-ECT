import java.util.Scanner;

public class Ex02 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        while(true){
            System.out.print("\nIntroduza numero inteiro: ");
            int n = KB.nextInt();
                
            if( n>0 && n<100 ){
                System.out.print("\n\n-------------------\n");
                System.out.printf("|  Tabuada dos %2d |\n", n);
                System.out.print("-------------------\n");
                for(int i=1; i<=10 ;i++){
                    System.out.printf("| %2d x %2d  |  %3d |\n", n, i, n*i);
                }
                System.out.print("-------------------\n");
                break;
            }else{
                System.out.print("\nNumero introduzido inválido! Tente outra vez.\n");
            }
        }
    }
}
