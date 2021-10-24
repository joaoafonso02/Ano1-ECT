import java.util.Scanner;

public class p411 {
	public static void main(String []args) {
		
		Scanner sc = new Scanner(System.in);
		
		int num1, prevnumb;
		
		prevnumb = 0;  
		int max = Integer.MIN_VALUE;
        int min = Integer.MAX_VALUE;
		
		System.out.println("\n\nIntroduza a lista de numeros inteiros positivos: ");
		 
		while(true) {
			
			num1 = sc.nextInt();
			
			if( max < num1){
                max = num1;  
            }
            else if( min > num1 ){
                min = num1;
                
            }
            else if( num1 <= 0 ) continue;
            
			else if(num1 == prevnumb * 2) break;
			 
		prevnumb = num1;
	
		}
		
		System.out.printf("The max number is: %d\n", max);
		System.out.printf("The min number is: %d\n", min);
		System.out.printf("The numbers that forced the end of the list were: %d and %d\n", prevnumb, num1);
           
	}
}
