import java.util.Scanner;

public class distancia {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); // Scanner 
		
		System.out.println("Pretende utilizar a escala 1:100 (cm:Km)? (y ou n)");
		
		String answer = sc.nextLine();
		
		if (answer.equals("y")) {
			
		System.out.print("Introduza as 4 coordenadas das 2 localidades (A(x,y) e B(x1,x2)).\nA:  " ); 
		
		double x1 = sc.nextDouble(); //imput
		double x2 = sc.nextDouble(); //imput
		
		System.out.print("B:");
		
		double x3 = sc.nextDouble(); //imput
		double x4 = sc.nextDouble(); //imput
		
		double coordenada1 = x3 - x1;
		double coordenada2 = x4 - x2;
		
		double distancia1 = Math.pow(coordenada1, 2) + Math.pow(coordenada2, 2);
		
		System.out.println("A(" + x1 + "," + x2 + ")");
		System.out.println("B(" + x3 + "," + x4 + ")\n");
		
		System.out.println("Distancia entre as 2 localidades: " +  Math.sqrt(distancia1) * 100 + " km" );
	
		} else {System.out.println("Erro! Escala nao pretendida.");
			}
		}
	}
