import java.util.Scanner;

public class quadrado {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		double x1,x2,x3,x4,x5,x6,x7,x8;
		
		System.out.println("\nPonto 1: ");
		
		x1 = sc.nextDouble();
		x2 = sc.nextDouble();
		
		System.out.println("Ponto 2: ");
		x3 = sc.nextDouble();
		x4 = sc.nextDouble();
		
		System.out.println("Ponto 3: ");
		x5 = sc.nextDouble();
		x6 = sc.nextDouble();
		
		System.out.println("Ponto 4: ");
		x7 = sc.nextDouble();
		x8 = sc.nextDouble();
		
		if (x2 == x4 && !(x1 == x3) && x5 == x3 && !(x4 == x6) && x6 == x8 && !(x5 == x7) && x7 == x1 && !(x8 == x2) && (x5 == x7)==(x4 ==x6) ) {
			System.out.println("Os pontos introduzidos formam um quadrado.");
		} else {
			System.out.println("Os pontos introduzidos nao formam um quadrado, introduza outros valores.");
				}	
	}
}
