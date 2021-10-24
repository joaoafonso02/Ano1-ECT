import java.util.Scanner;

public class km {
	
	public static void main(String[] args){
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Conversor de milhas para kilometros. \nIntroduza o numero de milhas:");
		
		double milhas = sc.nextDouble(); // Input user data
		double kilometros;
		
		kilometros = milhas * 1.609;	// Convertion
		
		System.out.print(kilometros + " km");  
        
	}	
}
