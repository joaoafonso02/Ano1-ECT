import java.util.Scanner;

public class p48 {
	public static void main(String []args) {
		
		Scanner sc = new Scanner(System.in);
		
		int num1, num2, mult, x, y;
		
		System.out.print("\nnumber 1: ");
		num1 = sc.nextInt();
		System.out.print("\nnumber 2: ");
		num2 = sc.nextInt();
		mult = 0;
		
		
		for(int i = 1; i <= num1; i++) {
			
			mult = num1 / 2 ;
			
			if(mult == 1) {
				
				mult = mult + num2 * 2;
			}
		}
		
		if(num1 % 2 == 0) {
			System.out.println("X  |  Y | y/n\n" + num1 + " | " + num2 + " | no\n" + mult);
		} else 
			System.out.println("X  |  Y | y/n\n" + num1 + " | " + num2 + " | yes\n" + mult);
	}
	
}
