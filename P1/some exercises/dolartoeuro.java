import java.util.Scanner;
 

public class dolartoeuro {
 
    public static void main(String[] args) {
		
       System.out.println("\nConversor dolares americano em euros \nIntroduza a quantia em dolares e a taxa de conversao:");
       
       Scanner sc = new Scanner(System.in); // Scanner
       
       //variables
       double dolars = sc.nextDouble(); // imput
       double taxa = sc.nextDouble(); // imput
       double eurs = dolars * taxa;
       
	   String strDouble = String.format("%.2f", dolars);
	   String strDouble1 = String.format("%.2f", eurs);
       
       System.out.println(strDouble + " dolares equivalem a " + strDouble1 + " euros"); // output
    }
}
