import java.util.Scanner;

public class p65 {
	static Scanner sc = new Scanner(System.in);//metodo de entrada de dados, static, para ser funcional para todas as funcoes no decorrer do programa.
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("\nIntroduza um numero que pretende de comprimento do seu array: "); // mensagem de introduaco
		
		
		// menu variaveis
		int n = sc.nextInt();
		int[] array = new int[n];  // array com o comprimento do valor que o utilizador introduziu
		
		
		System.out.println("Write your sequence:");
		//chamar funcao:
		sequence(array,n);
		GetMax(array);
		GetMin(array);
	}
	
	// 2a funcao - Leitura e escrita da sequencia
	public static int[] sequence(int[] array, int n) {
		
		// menu variaveis 2a funcao
		int prevNum = 0;
		int i;
		boolean doubleInsert = true;
		
		// um for loop de forma que o utilizador consiga escrever a sua sequencia
		for(i = 0; i < array.length; i++) {
			
			array[i] = sc.nextInt();
			
			if(array[i] == prevNum) { // se um certo elemento for igual ao elemento anterior termina o array
				 doubleInsert = true; break;
			}

			if(array[i] == 0)break;  // se um certo elemento for igual a 0 termina o array
		
			prevNum = array[i];
		}
		// printar o array
		System.out.println("Array:");
		
		for(int j = 0; j < i; j++) {
			
			System.out.println(array[j]);
			
		}
		
		System.out.println("Array invertido:");
		
		for(int k = n - 1; k >= 0; k--) { //obter o array invertido
			System.out.println(array[k]);
		}
		
		
		return array;
	}
	
	// 3a funcao - Obter o maximo do array
	public static int GetMax(int[] array) {
		// menu variaveis 2a funcao
		int maxValue = array[0]; //esta variavel inicialmente vai ocupar o 1o lugar do array em questao
		int i;
		
		for( i = 0; i < array.length; i++) {
			
			if(array[i] > maxValue) maxValue = array[i];
			
		}
		return maxValue;
	}
	
	// 4a funcao - obter o minimo do array
	public static int GetMin(int[] array) {
		int minValue = array[0]; //esta variavel inicialmente vai ocupar o 1o lugar do array em questao
		
		for(int i = 0; i < array.length; i++) {
			
			if(array[i] < minValue) minValue = array[i];
		}
		return minValue;
	}
	// 5a funcao 
	public static void xd(String[] args) {
		int secret = 0 + (int)(Math.random() * 10); 
		
		System.out.print("\n Guess the number I have between 0-10: ");
		int num1 = sc.nextInt();
		
		do{
			num1 = sc.nextInt();
		}while(num1 < 0 || num1 > 10);
		

	}
	
	
}
