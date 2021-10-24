import java.util.Scanner;

public class p62 {
	public static void main(String []args) {
		
	Scanner sc = new Scanner(System.in);
		
	int n, k; 
	int count = 1; 
	char resp = 'y';
		
	System.out.println("\nIntroduce a list of numbers: ");
	n = sc.nextInt();
	int[] array = new int[n];
	
	while (resp == 'y')	{
		do{
			for(int i = 0; i < array.length; i++) {
				n = sc.nextInt();
				array[i] = n;
				n = array[i];
					if(n == n) count++;
					if(n < 0) break;
			}
			
			
		}while(count < 100 && n > 0);
		
	
	System.out.printf("%d was introduced %d times.\n", n, count++);
		
	System.out.print("Do you want to continue (y/n)?");
	
	resp = sc.next().charAt(0);
	}
  }
}
