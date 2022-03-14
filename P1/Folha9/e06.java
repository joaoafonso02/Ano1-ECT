/*
 * Exercício 9.6
 * Na terra do Alberto Alexandre (localmente conhecido por Aubeto Auexande), o dialeto local é
 * semelhante ao português com duas exceções:
 * • não dizem os R’s;
 * • trocam os L’s por U’s.
 * Implemente um tradutor de português para o dialeto do Alberto que permite a introdução
 * de uma frase e apresente a sua tradução. Por exemplo "lar doce lar" deve ser traduzido para
 * "ua doce ua".
 * 
 * 
 */

import java.util.Scanner;

public class e06 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Para fechar o tradutor intruduz uma frase sem nada");
		String m; //String para guardar a mensagem
		do{
			m = sc.nextLine();
			System.out.println(traduz(m));
			}while(m.length() != 0);
	}
	
	public static String traduz(String m){
		String x = " ";
		//dá para fazer com if mas foi para relembrar como se fazia um switch
		for(int i = 0; i < m.length(); i++){
			switch(m.charAt(i)){
				case 'r':
				case 'R':
				break;
				case 'l':
				x += "u";
				break;
				case 'L':
				x += "U";
				break;
				default:
				x += m.charAt(i);
				break;
				}
			}
			
		return x;
		}
}
