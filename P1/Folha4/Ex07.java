import java.util.Scanner;

public class Ex07 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("\n\nIntroduza número: ");
        int n = KB.nextInt();

        String nString = Integer.toString(n);
        System.out.print("\n"+n+" -> ");
        for(int i=nString.length()-1; i>=0 ;i--){
            System.out.print(nString.charAt(i));
        }
        System.out.print("\n\n");
    }
}
