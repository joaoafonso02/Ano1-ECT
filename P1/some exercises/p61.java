import java.util.Scanner;

public class p61 {
	public static void main(String []args) {
	
	Scanner sc = new Scanner(System.in);
	int n;
	
	System.out.print("\nIntroduce a number: ");
	n = sc.nextInt();
	
	System.out.printf("\nSequence of %d numbers: \n", n);
	
	for(int i = 1; i <= n; i++) {
		System.out.println(i);
	}
	
	System.out.println("\nSequence of numbers inverted: ");
	
	for(int i = n; i > 0; i--) {
		System.out.println(i);
	}
	
  }
}
