/*
 * e07.java
 * 
 * Exercício 9.7
 * Crie uma função que coloque em maiúsculas a primeira letra de cada palavra de uma string:
 * capitalize("era uma vez") devolve "Era Uma Vez".
 * Sugestão: pode usar a mesma "máquina de estados" do problema 9.3 para detetar o início
 * de cada palavra e usar o método Character.toUpperCase para converter em maiúsculas.
 * 
 * 
 */


public class e07 {
	
	public static void main (String[] args) {
		System.out.println(Cap("era uma vez"));
	}
	
	public static String Cap(String text){
		boolean p = false; // diz se está dentro de uma palavra ou nao
		String x = " ";
		for(int i = 0 ; i < text.length(); i++){
			if(text.charAt(i) == ' ' || text.charAt(i) == '\t' || text.charAt(i) == '\n'){
				x += text.charAt(i);
				if(p){//enquanto nao aparecer uma letra nao conta como palavra
				p = false;//diz que esta fora de uma palavra
				}
				
				}else{//se aparecer uma letra
					if(!p){
						x += Character.toUpperCase(text.charAt(i));
						}else{
							x += text.charAt(i);
							}
					p = true;
					}
			}
		return x;
		}
}

