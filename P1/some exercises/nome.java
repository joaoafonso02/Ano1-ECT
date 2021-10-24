import java.util.Scanner;

public class nome {
	
	public static void main(String [] args) {
		
		String name, surname;
    Scanner sc= new Scanner(System.in);
    
    System.out.print("Name: ");
    name=sc.nextLine();
    System.out.print("Surname: ");
    surname=sc.nextLine();
    
    System.out.printf("%s %s, %c%c, %d, %b",  name,surname, Character.toUpperCase(name.charAt(0)), Character.toUpperCase(surname.charAt(0)), (name.length() + surname.length()), (Character.isUpperCase(name.charAt(0)) && Character.isUpperCase(surname.charAt(0))));    
  }
}
		
	
	
	
	
	
	
