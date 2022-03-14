/*
 * Exercício 9.5
 * 
 * O número dezassete representa-se em base dez como "17", em base dois como "10001", e
 * em base três como "122". Faça uma função que converta um número inteiro na sua
 * representação numa qualquer base (para bases entre 2 e 10). Por exemplo, pretende-se que:
 * 
 * numToBase(17, 10) devolve "17"
 * numToBase(17, 2) devolve "10001"
 * numToBase(17, 3) devolve "122"
 * 
 * Escreva um programa que converte um número dado pelo utilizador nas suas
 * representações em base 2, 3, … , 10.
 * 
 * Lembre-se que pode converter um número para outra base por divisão sucessiva pela base. O
 * resto de cada divisão dá mais um dígito que deve ser concatenado à esquerda dos anteriores.
 * 
 */
import java.util.Scanner;

public class e05 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		
		System.out.print("Valor para converter: ");
		int num = sc.nextInt();
		
		
		System.out.print("Base para conversao: ");
		int base = sc.nextInt();
		
		System.out.println(numToBase(num , base));
	}
	
	public static String numToBase(int num, int base){
		String n = " "; //inicia Uma string temporária
		int valor = num;
		int resto;  
		do{//faz a divisao enquanto o valor for maior ou igual á base
		resto = valor % base;
		valor = valor/base; 
		n += resto;
		}while(valor >= base);
		n += valor;
		
		String x = " ";//inicia outra string e troca a ordem aos valores
		for(int i = n.length()-1 ; i > 0 ; i--){
			x += n.charAt(i); 
			}
			
		return x;
		
		}
}

