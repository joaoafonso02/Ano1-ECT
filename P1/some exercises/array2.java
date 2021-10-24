import java.util.Scanner;

public class array2 {
	static Scanner sc = new Scanner(System.in);
	public static void main(String []args) {
		
		System.out.print("\nIntroduce a number: ");
		int n = sc.nextInt();
		int[] array = new int[n];
		
		System.out.printf("Sequence of %d numbers: \n",n);
		
		for(int i = 0; i < array.length; i++) {
			n = sc.nextInt();
			array[i] = n;
		}
		System.out.printf("Sequence of %d numbers inverted: ",n);
		for(int i = n - 1; i >= 0; i--) {
			System.out.print("\n" + array[i]);
		}
		System.out.print("\nMax: " + GetMaxValue(array));
		System.out.print("\nMin: " + GetMinValue(array));
		
	}
	public static int GetMaxValue(int[] array) {
		int MaxValue = array[0];
		
		for(int i = 0; i < array.length; i++) {
			if(array[i] > MaxValue) MaxValue = array[i];
		}
		return MaxValue;
		
	}
	public static int GetMinValue (int[] array) {
		int MinValue = array[0];
		
		for(int i = 0; i < array.length; i++) {
			if(array[i] < MinValue) MinValue = array[i];
		}
		return MinValue;
		
	}
}
