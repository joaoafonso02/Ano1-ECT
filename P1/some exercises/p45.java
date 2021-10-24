import java.util.Scanner;

public class p45 {
	public static void main(String []args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("\nIntroduce a number to verify if it is a prime number: ");
		
		int number;
		
		boolean isPrime = true;
		
		number = sc.nextInt();
		if(number == 1) isPrime= false; // 1 is not prime, the unique special case
		
		for(int i = 2; i < number; i++) { 
			
			// if intire division is 0 then it's not a prime number
				if(number % i == 0) {
					isPrime = false;
					break;
				
				
				}
			}
		
		if(isPrime == false) {
			System.out.printf("The number %d is not a prime number", number);
		} else {
			System.out.printf("The number %d is a prime number", number);
		}
		
	}
}
