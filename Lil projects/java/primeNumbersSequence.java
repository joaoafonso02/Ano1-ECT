import java.util.Scanner;

public class p45ll {
	public static void main(String []args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("\nIntroduce a limit number to print all prime numbers: ");
		
		int number, numberlimit;
		
		boolean isPrime;
		
		number = 1;
		numberlimit = sc.nextInt();
		
		while(number <= numberlimit) { 
			
			isPrime = true;
		
			if(number == 1) isPrime= false; // 1 is not prime, the unique special case
	
			for(int i = 2; i < number; i++) { 
			
				// if intire division is 0 then it's not a prime number
					if(number % i == 0) {
						isPrime = false;
						break;
				
				
					}
			}
		
			if(isPrime == false) {
				//System.out.printf("The number %d is not a prime number\n", number);
			} else {
				System.out.println( number);
			}
			
			
			
			number = number + 1;
			
		}
	}
}


