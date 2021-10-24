import java.util.Scanner;

public class pitagoras {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		double a, b, c, result;
		
		System.out.print("value a: ");
		a = sc.nextDouble();
		
		System.out.print("value b: ");
		b = sc.nextDouble();
		c = Math.sqrt(a * a + b * b);
		
		for(int i = 0; i <= a; i++) {
			c = Math.sqrt(i * i + b * b);
			System.out.printf("(a,b,c)=(%d,%3.1f,%3.1f)\n",i,b++,c);
		}
		
		}
	}
