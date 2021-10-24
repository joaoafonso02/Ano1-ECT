import java.util.Scanner;

public class intervalos {
	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	
	System.out.println("Introduza dois intervalos de valores, definidos por dois inteiros cada, um que define o inicio do intervalo e o outro o fim (deve ser sempre maior do que o inicio).");
	int xi, xf, yi, yf;
	while(true) {
		System.out.println("Intervalo 1:");
		xi = sc.nextInt();
		xf = sc.nextInt();
		
		System.out.println("Intervalo 2:");
		yi = sc.nextInt();
		yf = sc.nextInt();
	
			if (xf < xi || yf < yi) 
			{
				System.out.print("Erro! Introduza valores validos.");
			} 
			else 
			{
				System.out.println("Intervalo 1: " + xi + ", " + xf);
				System.out.println("Intervalo 2: " + yi + ", " + yf);
		
	
				boolean intersect = (yi < xf)  && (yf > xi);	
		
				System.out.print(intersect + "\n\n");
			}
		}
	}
}
