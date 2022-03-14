import java.util.Scanner;

public class Ex04 {
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args)
    {
        int n = sc.nextInt();
        for (int i=1; i<=n; i++) System.out.printf("%d! = %d\n", i, fact(i));
    }
    
    public static int fact(int i)
    {
        int factor = 1;
        for(int x=1; x<=i; x++) factor *= x;
        return factor;
    }
}
