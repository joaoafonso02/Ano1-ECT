import java.util.Scanner;

public class p49 {
	public static void main(String []args) {
		
		Scanner sc = new Scanner(System.in);
		
		 System.out.print("\n\nIntroduza as notas!\n\n");

        int soma = 0;
        int counter = 0;

        while(true){
			
            System.out.print("Nota? ");
            
            int num1 = sc.nextInt();
            
            if(num1 < 0){
				
                break;
                
            }else if(num1 > 20){
				
                System.out.print("\nInvalid Grade! Try again");
            }
            soma += num1;
            counter++;
        }
        System.out.printf("\nSum = %d\nAverage = %.1f\n\n",soma,(double)soma/counter);
	}
}
