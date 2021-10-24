import java.util.Scanner;

public class p64 {
	static Scanner sc = new Scanner(System.in);
		
	public static void main(String []args) {
		
		System.out.print("\nHistrograma de notas\nWrite the number of grades u have:");
		int n = sc.nextInt();
		int[] array = new int[n];
		sequence(array);
	
	}
	
	public static int[] sequence(int[] array) {
		boolean erro = false;
		int i, prevNumb;
		
		for( i = 0; i < array.length; i++) {
			prevNumb = array[i];
			array[i] = sc.nextInt();
			
			
			
			if(array[i] < 0 || array[i] > 20) {
				erro = true; 
				break;

			}  if (prevNumb == array[i]) System.out.print("*");
			
		}
		
		if( erro == true) {
			
			System.out.println("This grade is not between 0-20");
		}
		
		System.out.println("Array:");
		
		for (int j = 0; j < i; j++) {
			
            System.out.println(array[j] + "| *");
        }
		
		return array;
     } 
}

