import java.util.Scanner;

public class Ex06 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("\n\nIntroduza A: ");
        int a = KB.nextInt();
        System.out.print("Introduza B: ");
        int b = KB.nextInt();

        while(true){
            if( b==0 ){
                System.out.print("\nMDC: "+a+"\n\n");
                break;
            }else{
                int temp = a;
                a = b;
                b = temp%b;
            }
        }
    }
}
