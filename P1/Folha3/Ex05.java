import java.util.Scanner;

public class Ex05 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {                
        System.out.print("\n");

        for(int a=1; a<100 ;a++){
            for(int b=a+1; b<100 ;b++){
                double c = Math.sqrt(Math.pow(a, 2)+Math.pow(b, 2));
                if( c == (int)c ){
                    System.out.printf("%d %d %.0f\n", a, b, c);
                }
            }
        }

        System.out.print("\n\n");
    }
}
