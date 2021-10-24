import java.util.Scanner;

public class array1 {
	static Scanner sc = new Scanner(System.in);

	public static void main(String []args) {

	System.out.print("\nIntroduce a number: ");
	int n;
	n = sc.nextInt();
	int[] array = new int[n];

	
	
	
	System.out.printf("\nSequence of %d numbers: \n", n);
	for(int i = 0; i < array.length; i++) {
		n = sc.nextInt();
		array[i] = n;
	}
	
	System.out.print("\nSequence of numbers inverted: \n");
	for(int i = n - 1 ; i >= 0; i--) {
		System.out.println(array[i]);
	}
	
	System.out.println("\nMax number: " + maxnumb(array));
	System.out.print("Min number: " + minnumb(array));

  }
	public static int maxnumb (int[] array) {
		int maxnumb = array[0];
		for(int i = 0; i < array.length; i++) {
			if(array[i] > maxnumb)
				maxnumb = array[i];
			}
		return maxnumb;
	}
	public static int minnumb(int[] array) {
		int minnumb = array[0];
		for(int i = 0; i < array.length; i++) {
			if(array[i] < minnumb)
				minnumb = array[i];
			}
		return minnumb;
	}
}
