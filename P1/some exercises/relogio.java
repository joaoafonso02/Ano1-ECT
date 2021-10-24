import java.util.Scanner;

public class relogio {
	
	public static void main(String[] args){
		
		Scanner sc = new Scanner(System.in);//Scanner
		
		System.out.println("Tempo em segundos:");
		
		//variables
		int ss = sc.nextInt();
		int hh, mm, resto_ss, resto_mm;
		
		//hh:mm:ss
		mm = ss / 60;
		resto_ss = ss % 60;
		ss = resto_ss;
		
		hh = mm / 60;
		resto_mm = mm % 60;
		mm = resto_mm;
		
		
		//output
		System.out.printf("%d:%d:%d",hh,mm,ss);
		
		
			
			}
		
		
		
	}
	
	
	
