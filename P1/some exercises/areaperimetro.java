import java.util.Scanner;

public class areaperimetro {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Introduza 3 valores para base, altura e hipotenusa de um certo triangulo.");
		
		double base, altura, hipotenusa;
		base = sc.nextDouble();
		altura = sc.nextDouble();
		hipotenusa = sc.nextDouble();
		double area = (base * altura) / 2;
		double perimetro = (base + altura + hipotenusa);
		
		System.out.println("Area = " + area);
		System.out.println("Perimetro = " + perimetro);
		
		}
	}
