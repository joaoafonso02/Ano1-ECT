import java.util.Scanner;

public class p412 {
	public static void main(String []args) {
		
	Scanner sc = new Scanner(System.in);
	
	int num1, par, impar, contim, contp;
	boolean flag = true;
	
	par = 0; impar = 0; contim = 0; contp = 0;
	
	System.out.println("Introduza uma lista de numeros para verficar se constituem uma lista de numeros impares acabando em 0(mesmo que este nao entre na contagem):");
	
		while(true) {
	
		num1 = sc.nextInt();
		
			if(num1 % 2 == 0 && num1 != 0) {
				contp++;
				flag = false;
				
			} else if (num1 % 2 != 0){
				contim++;
			}
			
			if(num1 == 0) break;
		
		}
	
	if(flag == true) {
		System.out.printf("A sequencia de numeros e exclusivamente constituida por numeros impares, pois apresenta %d numeros impares.", contim); 
	} else {
		System.out.printf("\nA sequencia de numeros nao e constituida por numeros impares, pois apresenta %d numeros pares.", contp--); 
	}
	
	}	
}
