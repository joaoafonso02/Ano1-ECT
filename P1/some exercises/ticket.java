import java.util.Scanner;

	public class ticket {
		public static void main(String[] args) {
			
			Scanner sc = new Scanner(System.in);
			
			System.out.print("Idade: ");
			
			double age = sc.nextDouble();
			
			if (age < 6) {
				System.out.print("Isento de pagamento");
				} if (6 <= age && age <= 12) {
					System.out.print("Bilhete de crianca");
					} if (13 <= age && age <= 65) {
						System.out.print("Bilhete normal");
						}  if (65 < age ) {
								System.out.print("Bilhete de 3a idade");
								}
	}
}
