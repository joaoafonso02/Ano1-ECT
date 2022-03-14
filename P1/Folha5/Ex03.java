import java.util.Scanner;

public class Ex03
{
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args)
    {
        int month = sc.nextInt();
        int year = sc.nextInt();
        System.out.printf("O mês tem %d dias", (monthDayCheck(year, month)));
    }
    
    public static boolean bissex(int year)
    {
        return ((year%4)==0);
    }
    
    public static int monthDayCheck(int year, int month)
    {
        if (month<1 || month>12) return -1; //Usamos -1 por ser a representação do erro
        if (month == 2) return (bissex(year)) ? 29 : 28;
        if (month == 4 || month == 6 || month == 9 || month == 11) return 30;
        else return 31;
    }
}
