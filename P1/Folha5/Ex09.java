import java.util.Scanner;

public class Ex09 {
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Insert a number: ");
        int m = sc.nextInt();
        for(int i=1; i<=m; i++) if (isPrime(i)) System.out.printf("%d\n", i);
    }
    
    public static boolean isPrime(int i)
    {
        for (int k=2; k<i; k++) if (i%k==0) return false;
        return true;
    }
}
