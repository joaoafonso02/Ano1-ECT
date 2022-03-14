/*
 * Exercício 9.8
 * Faça uma função inversa da do problema 9.5. Por exemplo, pretende-se:
 * baseToNum("10001", 2) devolve 17
 * baseToNum("122", 3) devolve 17
 * baseToNum("17", 10) devolve 17
 * Repare que o primeiro parâmetro é uma string, mas o resultado é um int (pode converter
 * o char ’3’ no valor 3 com a expressão ’3’-’0’).
 * Escreva um programa para testar a função. Lembre-se que um número em base N só pode
 * ter dígitos na gama 0, …, N-1.
 * 
 * 
 */

import java.util.Scanner;

public class e08 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		String v;
		
		do{
		System.out.print("Valor");
		v = sc.nextLine();
		}while(!(isInt(v)));
		
		System.out.print("Base do valor");
		int b = sc.nextInt();
		
		System.out.println(convert(v,b));
	}
	
	//forma de conversao de qualquer base para decimal
	public static int convert(String v, int b){
		int soma = 0;
		for(int i = 0 ; i < v.length() ; i++){
			soma += (v.charAt(v.length() - i - 1)- '0') * Math.pow(b, i);
			}
		return soma;
		}
		
	//verifica se a string é um inteiro 
	public static boolean isInt(String x){
		for(int i = 0 ; i < x.length() ; i++){
			if(!(Character.isDigit(x.charAt(i)))){
				return false;
				}
			}
			return true;
		}
}
