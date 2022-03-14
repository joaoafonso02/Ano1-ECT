import java.util.Scanner;

public class Ex08 {
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args)
    {
        System.out.print("Insert a value for x1: ");
        double x1 = sc.nextDouble();
        System.out.print("Insert a value for x2: ");
        double x2 = sc.nextDouble();
        System.out.print("Insert the quantity of values to check: ");
        int rep = sc.nextInt();
        printer(x1, x2, rep);
    }
    
    public static void printer(double x1, double x2, int rep)
    {
        if (numCheck(x1,x2))
        {
            draw();
            System.out.printf("\n|   x   | 5x2+10x+3 | 7x3+3x2+5x+2 |\n");
            for (double x= x1; x<=x2; x+=(x2-x1)/(rep-1))
            {
                draw();
                System.out.printf("\n| %5.1f | %9.2f | %12.3f |\n", x, poly3(x,0,5,10,3), poly3(x,7,3,5,2));
            }
            draw();
        }
    }
    
    public static boolean numCheck(double x1, double x2)
    {
        return (x1<x2);
    }
    
    public static double poly3(double x, int a, int b, int c, int d)
    {
        return (a*Math.pow(x,3) + b*Math.pow(x,2) + c*x + d);
    }
    
    public static void draw()
    {
        for (int i=0; i<36; i++) System.out.print("-");
    }  
}
