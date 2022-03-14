import java.util.Scanner;

public class Ex08 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        while(true){
            System.out.print("\n\nIntroduza A: ");
            int a = KB.nextInt();
            System.out.print("Introduza B: ");
            int b = KB.nextInt();

            if( a<0 || b<0 ){
                System.out.print("\nValores Impossiveis!\n");
                continue;
            }

            for(int i=a; i<b ;i++){
                if( i%2==1 ){
                    System.out.print("\n"+i);
                }
            }
            
            System.out.print("\n\n");
            break;
        }
    }
}
