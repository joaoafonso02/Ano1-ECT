import java.util.Scanner;

public class despesamediadiaria {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Introduza o valor da despesa realizada no primeiro dia de viagem:");
		
		double dia1 = sc.nextDouble();
		double dia2 = dia1 + dia1 * 0.2; 
		double dia3 = dia2 + dia2* 0.2;
		double dia4 = dia3 + dia3 * 0.2;
		
		System.out.println((dia1 + dia2 + dia3 + dia4) / 4);
		
		
		
		
		
		
		
		
		
		
		}
}
