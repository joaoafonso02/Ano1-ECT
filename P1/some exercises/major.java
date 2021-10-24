import java.util.Scanner;

public class major {
	public static void main(String[] args){
		
		Scanner sc = new Scanner(System.in);
		while (true ) {
		double num1, num2;
		
		System.out.print("\nNumber 1: ");
		num1 = sc.nextDouble();
		System.out.print("Number 2: ");
		
		num2 = sc.nextDouble();
		
		if (num1 == num2) {
			System.out.print("Both numbers have the same value, try different ones.");
			} else {
				System.out.println("The maximum number between those two is: " + Math.max(num1,num2));
				System.out.println("The minimum number between those two is: " + Math.min(num1,num2));
			}
			
		}
		
	}
}
