import java.util.Scanner;

public class Ex05 {
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Insert the width of your rectangle: ");
        int width = sc.nextInt();
        System.out.print("Insert the height of your rectangle: ");
        int height = sc.nextInt();
        printNtimes(width, height);
    }
    
    public static void printNtimes(int width, int height)
    {
        for (int lines=0; lines<height; lines++)
        {
            for(int cols=0; cols<width; cols++)
            {
                System.out.print(((lines==0)||(lines==(height-1))||(cols==0)||(cols==(width-1))) ? "*":" ");
            }
            System.out.println("");
        }
    }
}
