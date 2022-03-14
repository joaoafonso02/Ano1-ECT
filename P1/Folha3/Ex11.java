import java.util.Scanner;

public class Ex11 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("\n\n");
        for (int i=0; i<8 ;i++) {
            for (int j=0; j<8 ;j++) {
                System.out.print( (char)('a'+j) + "" + (8-i) + " ");   
            }
            System.out.print("\n");
        }
        System.out.print("\n\n");
    }
}
