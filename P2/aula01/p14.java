import java.util.Scanner; 

public class p14 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Write: ");
        String smth = sc.nextLine();

        smth = smth.replace("r", "");
        smth = smth.replace("R", "");
        smth = smth.replace("l","u");
        smth = smth.replace("L","U");
        
        System.out.println("\nAubeto Auexande's speaks: " + smth);
    }
}
