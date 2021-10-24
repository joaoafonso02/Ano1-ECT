import java.util.Scanner;

public class ano {
	
	public static void main(String[] args) 
	{
		
		Scanner sc = new Scanner(System.in);
		
		int month, year, day;
		while(true)
		{
		
		System.out.print("\n\nday: ");
		day = sc.nextInt();	
		System.out.print("month: ");
		
		month = sc.nextInt();
		
		System.out.print("year: ");
		
		year = sc.nextInt();
		day++;
		if (month == 2)
		{
            int diaBissexto = 0;
            if (year % 4 ==0)
            {
                diaBissexto = 1;
			} System.out.printf("\nThis month %d of %d has %d days.\n", month, year, 28 + diaBissexto);
		}    
				if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
						System.out.printf("\nThis month %d of %d has 31 days.\n", month, year);
				} 	if (month == 4 || month == 6 || month == 9 || month == 11) {
						System.out.printf("\nThis month %d of %d has 30 days.\n", month, year);
				}
		
		System.out.printf("\nThe following day is %d " + "-" +" %d " + "-" + " %d ",day,month,year);
		
		System.out.printf("\nThe previous day is %d " + "-" +" %d " + "-" + " %d ",day-2, month,year);
		
		
		
		}				
	}
}
	

