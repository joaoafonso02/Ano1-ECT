import java.util.Scanner;

public class p63 {
	static Scanner sc = new Scanner(System.in);
	
	
	public static void main(String []args) {
		int[] array = new int[50];
			
		System.out.println("\nMENU --> Choose an option!(1 to 6)\n");
		System.out.println(" 1 - Write a sequence");
		System.out.println(" 2 - Max of the sequence");
		System.out.println(" 3 - Min of the sequence");
		System.out.println(" 4 - Average of the sequence");
		System.out.println(" 5 - Detect if the sequence is only formed by even numbers");
		System.out.println(" 6 - End.\n");
		System.out.print("Option -> ");

		int menuOption = sc.nextInt();
		System.out.print("\n");
        
		switch(menuOption){
			case 1:
				System.out.println("Write the sequence");
				sequence(array);
                
			case 2:
			System.out.print("\nMax: " + GetMaxValue(array));
                
                
			case 3:
				System.out.print("\nMin: " + GetMinValue(array));
                
                
			case 4:
				System.out.print("\nAverage: " + average(array));
               
                
			case 5:
				SequenceEvenNumbers(array);
                
                
			case 6:
				EndProgram();
				break;
                
			default:
				System.out.print("\nWrong input. Try again: ");
			return;
		}
	}
	public static int[] sequence(int[] array) {
		
		int i;
		for( i = 0; i < array.length; i++) {
			int n = sc.nextInt();
			if(n<0) n = -n;
			
			array[i] = n;
			if(array[i] == 0) break;
		}
		
		System.out.println("Array:");
		
		for (int j = 0; j <= i;j++) {
            System.out.println(array[j]);
        }
		
		return array;
     } 
		
	public static int GetMaxValue(int[] array) {
		int MaxValue = array[0];
		
		for(int i = 0; i < array.length; i++) {
			if(array[i] > MaxValue) {
				MaxValue = array[i];
				}
			}
			return MaxValue;
	}
	
	public static int GetMinValue(int[] array) {
		int MinValue = array[0];
		
		for(int i = 0; i < array.length; i++) {
			if(array[i] < MinValue) {
				MinValue = array[i];
				}
			}
			return MinValue;
	}
	
	public static double average(int[] array) {
		double soma = 0;
		int i;
		for(i = 0; i < array.length; i++) {
			soma += array[i];
			if (array[i]==0) break;
		}
		return (soma/(double)(i+1));
	}
	
	public static void SequenceEvenNumbers (int[] array) {
		boolean par = true;
		
		for(int i = 0; i < array.length; i++) {
			
			if(array[i] % 2 != 0) 
				par = false;
				break;
		}
		
		if( par ){
            System.out.println("\nA sequencia e composta apenas por numeros pares.");
        } else { 
            System.out.print("A sequencia nao e composta apenas por numeros pares.");
        }
	}
	
	public static void EndProgram(){
        System.exit(1);
    }
    
}

