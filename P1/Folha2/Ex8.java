import java.util.Scanner;
import java.util.Arrays;

public class Ex8 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        int[] nums = new int[3];
        // request inputs
        System.out.print("\n\n1º Numero: ");
        nums[0] = KB.nextInt();
        System.out.print("2º Numero: ");
        nums[1] = KB.nextInt();
        System.out.print("3º Numero: ");
        nums[2] = KB.nextInt();

        Arrays.sort(nums);
        System.out.print("\n"+nums[0]+" -> "+nums[1]+" -> "+nums[2]+"\n\n");
    }
}
