/*
 * Exercício 9.2
 * Faça uma função que devolva um acrónimo para um dado nome. Por exemplo:
 * acronimo("Organização das Nações Unidas") devolve "ONU"
 * acronimo("Universidade de Aveiro") devolve "UA"
 * Sugestão: extraia apenas as maiúsculas.
 * Implemente depois um programa que vá pedindo texto ao utilizador, guarda cada uma das
 * linhas num array, até que se introduza uma linha vazia. Depois escreve no ecrã o acrónimo de
 * cada uma das posições do array, com base na função desenvolvida.
 * 
 * 
 */
import java.util.Scanner;

public class e02 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		String temp;//String temporária
		String Atemp[] = new String[100];//array temporário para guardar as Strings
		int x = 0;
		do{
		System.out.println("(Para fechar intruduza uma linha em branco)");
		System.out.print("texto para fazer acronimo: ");
		temp = sc.nextLine();
		Atemp[x] = temp;
		x++;
		}while(temp.length() != 0);
		
		//cria um novo array com o tamanho certo 
		String text[] = new String[x];
		for (int i=0; i < x; i++){ 
            text[i] = Atemp[i]; 
		}
		System.out.println(Acronimo(text));
	}
	
	public static String Acronimo(String text[]){
		String t = " " ; //guarda o acronimo
		for(int i = 0 ; i < text.length; i++){
			String temp = text[i];
			for(int j = 0; j < text[i].length(); j++){
				 if (Character.isUpperCase(temp.charAt(j))){
					 t += temp.charAt(j);
					 }
				}
			}
		return t;
		}
}

