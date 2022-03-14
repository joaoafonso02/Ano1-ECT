/*
 * Exercício 9.4
 * As matrículas automóveis em Portugal podem ter um de três padrões: AA-00-00, 00-00-AA ou
 * 00-AA-00.
 * 
 * Crie uma função booleana matchPattern(str, pattern) que indique se uma dada string str
 * corresponde a um dado padrão pattern. Um A no padrão corresponde a qualquer letra
 * maiúscula na string, um 0 corresponde a qualquer dígito, e outros carateres devem coincidir
 * exatamente.
 * 
 * 1) Escreva um programa que, invocando esta função, verifique se um texto introduzido
 * pelo utilizador é uma matrícula portuguesa válida.
 * 
 * 2) Crie um array onde guarda a marca, modelo e ano de um carro e depois, dado um
 * padrão de matrícula, encontra e lista os carros correspondentes.
 * 
 */
 
import java.util.Scanner;

public class e04 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		String str;
		
		do{
		System.out.println("Insira uma matricula valida: ");
		str = sc.nextLine();
		}while(isValid(str));

	}
	
	public static boolean isValid(String str){
		
		if(str.length() != 8) return false;
		if(matchPattern(str , "XX-00-00")) return true;
		if(matchPattern(str , "00-XX-00")) return true;
		if(matchPattern(str , "00-00-XX")) return true;
		
		//se nenhum dos ifs se verificar
		return false;
		}
		
	public static boolean matchPattern(String str , String pat){
		
		for(int i = 0; i < 7; i++){	
			if(i == 2 || i == 5){
				if (str.charAt(i) != '-'){
					return false;
					}
				i++;
				}
			
			if(Character.isDigit(pat.charAt(i))){//se for digito
				if(!(Character.isDigit(str.charAt(i)))){//se nao for digito
					return false;//n corresponde
					}
					}else{//se nao for digito
						if(Character.isDigit(str.charAt(i))){ //se for digito
					return false;
					}
				}
			}
			//se todos os valores derem certo está certo
		return true;	
	}
}
