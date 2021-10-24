import java.util.Scanner;

public class tabuada {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		
		while(true) {
		
		System.out.print("\nnumero inteiro entre 0 e 100: ");
		
		int n = sc.nextInt();
		
		if(0 <= n && n <= 100 ) {
			System.out.println("Tabuada dos " + n + ":");
			
			for(int i = 1; i < 11; i++) {
				System.out.printf("%d x %d = %d\n",n,i,n * i);
			} 
		}	
		else {
			System.out.println("\nO numero que introduziu nao esta dentro dos valores! Volte a tentar! ");
		}	
	 }
	}
}
