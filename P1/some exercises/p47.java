import java.util.Scanner;

public class p47 {
	public static void main(String []args) {
		
		Scanner sc = new Scanner(System.in);
		
		int num1, reverse = 0;
		
		System.out.print("\nnumber to reverse: ");
		num1 = sc.nextInt();
		
		if (num1 > 0) {
			
			while (num1 != 0) {
				reverse = reverse * 10;
				reverse = reverse + num1 % 10;
				num1 /= 10;
			
			} 
			System.out.println("Reversed Number: " + reverse);
		} else {System.out.print("\nTry a different number!");}
	}
} 
