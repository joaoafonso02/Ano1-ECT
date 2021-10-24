import java.util.Scanner;

public class fatorial {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int M,f=1;
		
		do{
			
			System.out.print("\nnumero inteiro entre 1 e 10: ");
		
			M = sc.nextInt();
		
		} while (10 <= M);
			
			for (int i = 1; i <= M; i++) {
				f=f*i;
				System.out.printf("%d! = %d \n", i, f);
				}

	} 
}
