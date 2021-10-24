import java.util.Scanner;

public class raizes {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		double a, b, c, result, result1, i1, i2;
		
		System.out.print("\nvalue a: ");
		a = sc.nextDouble();
		System.out.print("value b: ");
		b = sc.nextDouble();
		System.out.print("value c: ");
		c = sc.nextDouble();
		
		result = (-b + Math.sqrt(b * b - 4 * a * c)) / (2 * a);
		result1 = (-b - Math.sqrt(b * b - 4 * a * c)) / (2 * a);
		
		i1 = (-b / (2 * a) + (Math.sqrt(-(b * b - 4 * a * c)) / (2 * a)));
		i2 = (-b / (2 * a) - (Math.sqrt(-(b * b - 4 * a * c)) / (2 * a)));
		
		if (b * b - 4 * a * c >= 0) {
			System.out.print("This 2nd degree equation has the following zeros: " + result1 + " and " + result);
		} else {
			System.out.print("This 2nd degree equation has the following imaginative zeros: " + i1 + "i" + " and " + i2 + "i");
		}
		
	}
}
