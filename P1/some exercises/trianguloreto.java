import java.util.Scanner;

public class trianguloreto {
	
	public static void main(String[] args){
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Introduza os valores para 2 catetos ");
		
		double catetoA, catetoB, hipotenusaC;
		catetoA = sc.nextDouble();
		catetoB = sc.nextDouble();
		
		hipotenusaC = Math.sqrt(Math.pow(catetoA,2) + Math.pow(catetoB,2));
		
		System.out.printf("hipotenusa: %4.1f\nangulo: %f",hipotenusaC, (Math.acos(catetoA / hipotenusaC) * 57.295779513) );
		
		
		}
	}
