import java.util.Scanner;

public class p27 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int num1, num2, num3, a;
		
		System.out.print("number 1: ");
		num1 = sc.nextInt();
		System.out.print("number 2: ");
		num2 = sc.nextInt();
		System.out.print("number 3: ");
		num3 = sc.nextInt();
		a = Math.max(num1,num2);
		
		if (num1 == num2 && num1 == num3 ) {
			System.out.println("All the numbers have the same value.");
			} else {
				System.out.println("The maximum number is: " + Math.max(a,num3));
				System.out.println("The minimum number is: " + Math.min(a,num3));
			}
		
	}
}
