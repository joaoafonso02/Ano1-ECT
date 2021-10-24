import java.util.Scanner;

public class p34 {
	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
		
	System.out.print("\nnumero inteiro: ");
	
	int n = sc.nextInt();
	
	double serie = 0;
	
	for (int i = 0; i <= n; i++) {
	
		serie = serie + Math.pow((-1), i)/(2 * i + 1);
	}
	System.out.printf("%4.15f a uma distancia de pi/4 de: %4.15f\n", serie, (Math.abs((Math.PI/4)-serie)));
 }
}

