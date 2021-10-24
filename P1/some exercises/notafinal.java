import java.util.Scanner;

public class notafinal {
	public static void main (String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Introduza as notas dos 2 testes praticos ordenadamente:");
		
		double testep1, testep2, testetp1, testetp2, testetp3, QA;
		
		testep1 = sc.nextDouble();
		testep2 = sc.nextDouble();
		
		System.out.println("Introduza as notas dos 3 testes teorico praticos ordenadamente:");
		
		testetp1 = sc.nextDouble();
		testetp2 = sc.nextDouble();
		testetp3 = sc.nextDouble();
		
		System.out.println("Introduza as notas da media das  questoes aula realizadas:");
		
		QA = sc.nextDouble();
		
		System.out.print(testep1 * 0.25 + testep2 * 0.35 + testetp1 * 0.10 + testetp2 * 0.10 + testetp3 * 0.10 + QA * 0.10);
		
	
	
		
		
		
		
		
		
		
		
		
	}
}
