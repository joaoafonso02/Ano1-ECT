import java.util.Scanner;

public class notafinalp1 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("TPG1: ");
		
		double tpg1, tpg2, El;
		tpg1 = sc.nextDouble();
		
		System.out.print("TPG2: ");
		tpg2 = sc.nextDouble();
		
		System.out.print("El: ");
		El = sc.nextDouble();
		
		System.out.println("Final grade: " + (tpg1 * 0.2 + tpg2 * 0.3 + El * 0.5) );

			if (0 <= (tpg1 * 0.2 + tpg2 * 0.3 + El * 0.5) && (tpg1 * 0.2 + tpg2 * 0.3 + El * 0.5)< 9.5) {
				System.out.print("U Failed!");
			} if (9.5 < (tpg1 * 0.2 + tpg2 * 0.3 + El * 0.5) && (tpg1 * 0.2 + tpg2 * 0.3 + El * 0.5) <=20) {
					System.out.print("Approved. Congrats!!");
				} if ((tpg1 * 0.2 + tpg2 * 0.3 + El * 0.5) < 0 || (tpg1 * 0.2 + tpg2 * 0.3 + El * 0.5) >20)  {
						System.out.print("The grades you wrote are not between 0 - 20 values");
					}
		
		
		}
	
	}
