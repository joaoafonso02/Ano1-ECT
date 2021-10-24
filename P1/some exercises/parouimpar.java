import java.util.Scanner;

public class parouimpar {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		while (true) {
			
			System.out.print("\nIntroduza um valor: ");
			int num1 = sc.nextInt();
		
			if (num1 % 2 == 0) {
				System.out.println("\nPar");
			} else {
				System.out.println("\nImpar");
			}
			
		}
	}
}
