/*
 * Exercício 9.3
 * Crie uma função que indique quantas palavras contém uma string. Considere que uma palavra
 * é qualquer texto que não contenha espaços, tabs (\t) ou mudanças de linha (\n). Por exemplo:
 * countWords("isto é 1 frase ") devolve 4.
 * Sugestão: pode percorrer a string símbolo a símbolo e manter uma variável que indica se
 * está dentro ou fora de uma palavra. Se estiver "dentro" e aparecer um espaço (ou \t ou \n),
 * passa a estar "fora". Se estiver "fora" e aparecer outro caráter, passa a estar "dentro" e conta
 * mais uma palavra.
 * 
 * 
 */


public class e03 {
	
	public static void main (String[] args) {
		System.out.println(countWords("isto é 1 frase isto sao     mais palavras "));
	}
	
	public static int countWords(String text){
		int x = 0; //conta palavras
		boolean p = false; // diz se está dentro de uma palavra ou nao

		for(int i = 0 ; i < text.length(); i++){
			if(text.charAt(i) == ' ' || text.charAt(i) == '\t' || text.charAt(i) == '\n'){
				
				if(p){//enquanto nao aparecer uma letra nao conta como palavra
				x++;
				p = false;
				}
				
				}else{//se aparecer uma letra
					p = true;
					}
			}
		return x;
		}
}

