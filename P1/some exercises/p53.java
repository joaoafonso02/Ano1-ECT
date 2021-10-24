import java.util.Scanner;

public class p53 {

	static Scanner sc = new Scanner(System.in);
	
	public static void main(String []args) {
		
		System.out.print("\nMonth: ");
		int mes = sc.nextInt();
		System.out.println("\nYear: ");
		int ano = sc.nextInt();
		System.out.printf("%d / %d", mes, ano);
		System.out.print(dias(ano, mes));
	}
	public static boolean bissexto(int ano){	
		return (ano % 4 == 0);
	}
	public static int dias (int ano, int mes){
		if(mes == 2) return bissexto(ano) ? 28 : 29;
		if(mes == 4 || mes == 6 || mes == 9 || mes == 11) return 30;
		else return 31;
	}
	public static boolean range (int mes){
		return (mes > 0 && mes <= 12); 
	}
	public static int positive (int ano){
		return (ano >> 0);
	}
}
