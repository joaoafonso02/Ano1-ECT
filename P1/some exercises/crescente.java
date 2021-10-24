import java.util.Scanner;

public class crescente {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int num1, num2, num3, a, b, m, m1, not;
		while (true) {
		System.out.print("number 1: ");
		num1 = sc.nextInt();
		System.out.print("number 2: ");
		num2 = sc.nextInt();
		System.out.print("number 3: ");
		num3 = sc.nextInt();
		
		a = Math.max(num1,num2);
		b = Math.max(a, num3);
		m = Math.min(num1,num2);
		m1 = Math.min(m, num3);
		
		
				System.out.println("The maximum number between those three numbers is: " + b);
		
		
  }
 }
}


