import java.util.Scanner;

public class Ex06
{
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args)
    {
        System.out.print("Insert a number from 1 to 99: ");
        int n = sc.nextInt();
        table(n);
    }
    
    public static boolean getIntRange(int n)
    {
        return ((n>0) && (n<=100));
    }
    
    public static void table(int n)
    {
        if (getIntRange(n))
        {
        draw();
        System.out.printf("\n| Tabuada dos  %02d |\n", n);
        draw();
        System.out.printf("\n");
        for (int i=1; i<=10; i++) System.out.printf("| %2d x %2d |  %3d  |\n", n, i, (n*i));
        draw();
        }
    }
    
    public static void draw()
    {
        for (int i=0; i<19; i++) System.out.print("-");
    }
}
