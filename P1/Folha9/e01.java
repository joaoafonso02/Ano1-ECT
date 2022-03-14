/*
 * Exercício 9.1
 * Pretende-se escrever um programa que leia do teclado uma frase e calcule alguma
 * informação relativamente aos caracteres que a constituem.
 * 
 * 1) O programa deve calcular e escrever o número de caracteres minúsculos, o número de
 * caracteres maiúsculos e o número de caracteres numéricos. Pode recorrer aos
 * métodos Character.isUpperCase(), Character.isLowerCase() e Character.isDigit().
 * A saída de dados deve obedecer ao formato seguinte:
 * Análise de uma frase
 * Frase de entrada ->########################################
 * Número de caracteres minúsculos -> ##
 * Número de caracteres maiúsculos -> ##
 * Número de caracteres numéricos -> ##
 * 
 * 2) Crie uma função booleana isVowel(char c) para verificar se um carácter c é uma vogal
 * e altere o programa anterior para contar também vogais e consoantes.
 * Número de vogais -> ##
 * Número de consoantes -> ##
 * 
 */
import java.util.Scanner;

public class e01 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Escreve qualquer coisa:");
		String text = sc.nextLine();
		System.out.println("Frase de entrada ->" + text);
		int u = 0;//Upper case (maiusculas) 
		int l = 0;//Lower case (minusculas)
		int d = 0;//Digit (numeros)
		int v = 0;//vowel
		int c = 0;
		for (int i = 0 ; i < text.length() ; i++){
			if(Character.isUpperCase(text.charAt(i))){
				u++;
				}
			if(Character.isLowerCase(text.charAt(i))){
				l++;
				}
			if(Character.isDigit(text.charAt(i))){
				d++;
				}else{
					if(isVowel(text.charAt(i))){
						v++;
						}else{
							c++;
							}
					}
			}	
		System.out.println("Numero de caracteres minusculos -> " + l);
		System.out.println("Numero de caracteres maiusculos -> " + u);
		System.out.println("Numero de caracteres numericos -> " + d);
		System.out.println("/nNumero de vogais -> " + v);
		System.out.println("Numero de consoantes -> " + c);
		}
	
	public static boolean isVowel(char c){
		if(c == 'a' || c == 'e'|| c == 'i' || c == 'o'|| c == 'u' || c == 'A' || c == 'E'|| c == 'I' || c == 'O'|| c == 'U'){
			return true;
			}
		return false;
		
		}

}
