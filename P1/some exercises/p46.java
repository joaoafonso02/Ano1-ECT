import java.util.Scanner;

public class p46 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int num1, num2, mdc;

		System.out.print("\nnumber 1: ");
		num1 = sc.nextInt();
		System.out.print("\nnumber 2: ");
		num2 = sc.nextInt();
		mdc = 0;
		 for(int i = 1; i <= num1 && i <= num2; i++) {
			 
            if(num1 % i ==0 && num2 % i ==0) {
				
				mdc = i;
				
			 }
        }

        System.out.printf("Mdc of %d and %d is: %d", num1, num2, mdc);
    }

    }
		

