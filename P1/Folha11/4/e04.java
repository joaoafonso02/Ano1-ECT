/*
 * Exercício 11.4
 * Crie um programa que permita gerir a avaliação de uma turma de Programação I 
 * com um máximo 20 alunos. Para cada aluno deverá ser guardada a seguinte informação:  
 * Número mecanográfico - valor inteiro; 
 * Nome do aluno - texto livre; 
 * Notas de 3 testes – valores inteiros no intervalo [0 ... 20]; 
 * Nota final - valor real no intervalo [0,0 ... 20,0]. 
 * 
 * O programa deve funcionar de forma repetitiva com base num menu de 
 * opções que a seguir se apresenta:   
 *  Gestão de uma turma:   
 * 1 - Inserir informação da turma   
 * 2 - Mostrar informação de um aluno   
 * 3 - Alterar informação de um aluno   
 * 4 - Listar os alunos  
 * 5 - Listar os alunos ordenados por nota final   
 * 6 - Média das notas finais   
 * 7 - Melhor aluno   
 * 8 – Inserir pesos dos vários testes  
 * 9 - guardar dados do aluno num ficheiro 
 * 0 - Terminar o programa   
 * Opção?  
 * O programa deverá permitir as seguintes operações:  
 * 
 * 1)Introdução da informação associada aos alunos, terminando com a 
 * introdução do nº mec. 0. Toda a informação deverá ser pedida ao 
 * utilizador com a exceção da nota final que deverá ser calculada 
 * pelo programa de acordo com os pesos dos vários testes (opção 8). 
 * Nesta opção, a turma deve ser preenchida desde o início, ignorando 
 * os dados previamente introduzidos.  
 * 
 * 2)Mostrar informação sobre um aluno com base no nº mec., pedido ao 
 * utilizador. Deve informar o utilizador se o aluno não existir.  
 * 
 * 3)Alterar notas de um aluno cujo nº mec. é pedido ao utilizador. 
 * Se o aluno não existir, deve ser acrescentado à turma no caso de 
 * ainda não se encontrar preenchida.  
 * 
 * 4)Mostrar a informação sobre os alunos.  
 * ----
 * 5)Mostrar a informação sobre os alunos, ordenada por nota final.  
 * 
 * 6)Calcular e imprimir a média das notas finais da turma.  
 * 
 * 7)Mostrar ao utilizador a informação sobre o melhor aluno.  
 * ----
 * 8)Introduzir os pesos dos vários testes. 
 * 
 * 
 */
import java.util.Scanner;
import java.io.*;


public class e04 {
	
	public static void main (String[] args) throws FileNotFoundException{
		
		Scanner sc = new Scanner(System.in);
		Aluno turma[] = new Aluno[20];//cria a turma;
		int pt[] = new int[3];
		 
		do{
		Menu();
		int menu = sc.nextInt();
		switch(menu){
		case 1:
		turma = edit();
		editNotaF(turma , pt);
		break;
		case 2:
		infoAluno(turma);
		break;
		case 3:
		turma = altAluno(turma);
		editNotaF(turma , pt);//altera a nota de acordo com os novos valores
		break;
		case 4:
		printTurma(turma);
		break;
		case 5:
		printTurmaMedia(turma);
		break;
		case 6:
		mediaTurma(turma);
		break;
		case 7:
		melhorAluno(turma);
		break;
		case 8:
		pt = pesoTestes();//pede a percentagem dos testes
		editNotaF(turma , pt);//adiciona a percentagem dos testes
		break;
		case 9:
		guardarTurma(turma);
		break;
		case 0:
		System.exit(25565);
		break;
		
		default:
		System.out.println("Valor nao existente");
		break;
		}
		}while(true);
	}
	
	public static Aluno[] edit() {
		Scanner sc = new Scanner(System.in);
		Aluno turma[] = new Aluno[20];
		
		for(int i = 0; i < 20; i++){
			
			System.out.printf("Aluno %d :%n", i+1);
			int temp;
			boolean invalido;
			do{
				invalido = false;
				System.out.print("Numero mec: ");//numero mec
				temp = sc.nextInt();
				if(temp == 0) return turma;//Se o numero mec for zero acaba a função;
				
				if(turma[0] != null){// se for o primeiro valor n verifica
					for(int g = 0; g < i ; g++){
						if(turma[g] == null)break;// se n haver mais valores acaba
						if(turma[g].mec == temp){//se existir um valor igual
							invalido = true;
							System.out.println("Esse numero mec já foi introduzido");
							break;
							}
						}
						}
					
			}while(invalido);
			turma[i] = new Aluno();//cria o novo aluno
			turma[i].mec = temp; //adiciona o numero mec ao aluno
			
			System.out.print("nome: ");//nome
			turma[i].nome = sc.next(); 
			
			for(int f = 0 ; f < 3 ; f++){//testes
				System.out.printf("Teste %d: ", f+1);
				turma[i].teste[f] = sc.nextInt();
				if(turma[i].teste[f] < 0 || turma[i].teste[f] > 20){
					System.out.println("Nota de 0 a 20.");
					f--;
					}	
				}
		}
		System.out.println("Limite de alunos na turma alcançado");
		return turma;
		}
		
		//função para procurar um aluno na turma por numero mec
	public static int findAluno(Aluno turma[]) {
		//pede o numero mec do aluno
		Scanner sc = new Scanner(System.in);
		System.out.print("Numero mec do aluno: ");
		int mec = sc.nextInt();
		int i = -1;
		boolean found = false;//variavel diz se o aluno foi encontrado
		
		do{//procura o numero mec na turma
			i++;
			if(turma[i] == null || i == 20) break; // se n existir mais alunos acaba o ciclo
			if(turma[i].mec == mec)found = true;  //se encontrar o aluno ativa a variavel
			}while(!found);
			
		if(!found){
			if(i == 0 ){//se n existir alunos
				System.out.println("Ainda nao foi criada uma turma");
				}else{//se n for encontrado nenhum aluno
				System.out.println("Aluno nao encontrado");
				}
				return -1;//valor inválido para usar como não foi encontrado nenhum aluno	
			}else{
				return i;//devolve o indice onde o aluno foi guardado
			}
		}
		
		//faz print da informação de um aluno
	public static void printAluno(Aluno turma[], int i) {		
				System.out.println("Nome: " + turma[i].nome);
				System.out.println("Numero mec: " + turma[i].mec);
				System.out.println("Teste 1: " + turma[i].teste[0]);
				System.out.println("Teste 2: " + turma[i].teste[1]);
				System.out.println("Teste 3: " + turma[i].teste[0]);
				System.out.println("Nota final: " + turma[i].nfinal);
		}
		
		//mostra a informação do aluno
	public static void infoAluno(Aluno turma[]) {
			int i = findAluno(turma);
			if(i >= 0){
				System.out.println("----------");
				printAluno(turma, i);
				System.out.println("----------");
			}
		}
		
		//altera informações de um aluno
	public static Aluno[] altAluno(Aluno turma[]){
		int i = findAluno(turma);
		
		if(i >= 0){
			Scanner sc = new Scanner(System.in);
			System.out.printf("Novos dados do Aluno %d :%n", i+1);
			System.out.print("Numero mec novo: ");//numero mec
			int temp = sc.nextInt();
			if(temp == 0) return turma;//Se o numero mec for zero acaba a função;
			turma[i].mec = temp; 
			System.out.print("Nome novo: ");//nome
			turma[i].nome = sc.next(); 
			
			for(int f = 0 ; f < 3 ; f++){//testes
				System.out.printf("Teste %d novo: ", f+1);
				turma[i].teste[f] = sc.nextInt();
				if(turma[i].teste[f] < 0 || turma[i].teste[f] > 20){
					System.out.println("Nota de 0 a 20.");
					f--;
					}
				}
			}
		return turma;
		}
		
		//faz print da Turma
	public static void printTurma(Aluno[] turma){
		if(turma[0] == null){ //se nao ainda existir alunos fecha a funçao
			System.out.println("Ainda nao existe uma turma");
			return;
			} 
		System.out.println("-------");
		for(int i = 0; i < 20; i++){
			if(turma[i] == null)break;//acaba se n existir mais alunos
			printAluno(turma , i);
			System.out.println();
			}
		System.out.println("-------");
		}
		
		//lista os alunos de acordo com a melhor media
	public static void printTurmaMedia(Aluno[] turma){
		
		if(turma[0] == null){ //se nao ainda existir alunos fecha a funçao
			System.out.println("Ainda nao existe uma turma");
			return;
			}
			
		for(int h = 0; h < turma.length; h++){
			if(turma[h] == null)break;//se nao existir mais alunos para o loop
			
			double m = turma[h].nfinal;//guarda a media do 1 aluno
			int i = h;//guarda o indice do 1 aluno
			
			for(int g = h; g < turma.length; g++){		
				if(turma[g] == null)break;//se nao existir mais alunos para o loop
				
				if(m < turma[g].nfinal){//se existir uma media mais alta que a atual
				m = turma[g].nfinal; // atualiza a media mais alta
				i = g; //atualiza o indice da media mais alta
				}
				
			
				}
				
			Aluno temp = turma[h];//guarda os dados do 1 aluno
			turma[h] = turma[i];//o aluno da nota mais alta passa para primeiro lugar
			turma[i] = temp;//o aluno que estava no 1 lugar passa para o lugar onde anteriormente estava o aluno com maior media 
			}
			printTurma(turma);
		}
		
		
		//media da turma
	public static void mediaTurma(Aluno[] turma){
		double media = 0;
		int i;
		for(i = 0 ; i < turma.length; i++){
			if(turma[i] == null)break;
			media += turma[i].nfinal;
			};
			
		System.out.println("A media da turma é " +  media/i);
		}
		
		
		//informação do melhor aluno
	public static void melhorAluno(Aluno[] turma){
		
		if(turma[0] == null){ //se nao ainda existir alunos fecha a funçao
			System.out.println("Ainda nao existe uma turma");
			return;
			}
			
			double m = turma[0].nfinal;//guarda a media do 1 aluno
			int i = 0;//guarda o indice do 1 aluno
			
			for(int g = 0; g < turma.length; g++){		
				if(turma[g] == null)break;//se nao existir mais alunos para o loop
				
				if(m < turma[g].nfinal){//se existir uma media mais alta que a atual
				m = turma[g].nfinal; // atualiza a media mais alta
				i = g; //atualiza o indice da media mais alta
				}
		
		}
		System.out.println("O aluno com melhor media e o: ");
		printAluno(turma, i);	
		System.out.println("--------");
	}
		
		//Pede o peso dos 3 testes
	public static int[] pesoTestes(){
		Scanner sc = new Scanner(System.in);
		int pt[] = new int[3];
		do{
			for(int i = 0; i < pt.length ; i++){
				System.out.printf("Peso do teste %d: ", i+1);
				pt[i] = sc.nextInt();
				if(pt[i] < 0 || pt[i] > 100){
					System.out.println("O peso do teste tem de ser entre 0 e 100");
					i--;
					}
				}
			if(pt[0]+ pt[1] + pt[2] != 100){
				System.out.println("A soma das percentagens tem de dar 100%");
				}
		}while(pt[0]+ pt[1] + pt[2] != 100);//verifica se o total das percentagens está correto
		//devolve a percentagem dos testes
		return pt;
		}
		
		//atualiza a nota final
	public static Aluno[] editNotaF(Aluno turma[] ,int pt[]){
		int i = -1;
		do{//procura o numero mec na turma
			i++;
			if(turma[i] == null || i == 20) break; // se n existir mais alunos acaba o ciclo
			turma[i].nfinal = turma[i].teste[0]*pt[0]/100 + turma[i].teste[1]*pt[1]/100 + turma[i].teste[2]*pt[2]/100;
			}while(true);
		return turma;
		}
		
		//Guarda a turma num ficheiro
	public static void guardarTurma(Aluno turma[]) throws FileNotFoundException{
		
		if(turma[0] == null){ //se nao ainda existir alunos fecha a funçao
			System.out.println("Ainda nao existe uma turma");
			return;
			}
		
		boolean Ft = true;
		File ficheiro;
		do{
			Scanner sc = new Scanner(System.in);
			System.out.println("Nome do ficheiro para guardar a turma:");
			ficheiro = new File(sc.nextLine());
			
			if(ficheiro.isFile() && ficheiro.canRead()){
			Ft = false;
			}else{
				System.out.println("Nao é um ficheiro ou nao e possivel fazer a leitura do mesmo");
				}
			}while(Ft);
		PrintWriter writer = new PrintWriter(ficheiro);
				
		for(int i = 0; i < 20; i++){
			if(turma[i] == null)break;//acaba se n existir mais alunos
			
			writer.println("Nome: " + turma[i].nome);
			writer.println("Numero mec: " + turma[i].mec);
			writer.println("Teste 1: " + turma[i].teste[0]);
			writer.println("Teste 2: " + turma[i].teste[1]);
			writer.println("Teste 3: " + turma[i].teste[0]);
			writer.println("Nota final: " + turma[i].nfinal);
			writer.println("");
			
			}	
		writer.close();
		System.out.println("Guardado!");
		}
		
		//cria o menu
	public static void Menu (){
		System.out.println("Gestao de uma turma:");
		System.out.println("1 - Inserir informacao da turma");
		System.out.println("2 - Mostrar informacao de um aluno");
		System.out.println("3 - Alterar informacao de um aluno");
		System.out.println("4 - Listar os alunos");
		System.out.println("5 - Listar os alunos por nota final");
		System.out.println("6 - Media das notas finais");
		System.out.println("7 - Melhor aluno");
		System.out.println("8 - Inserir pesos dos varios testes");
		System.out.println("9 - Guardar dados do aluno num ficheiro");
		System.out.println("0 - Terminar o programa");
		System.out.print("Opcao? ");
		}
}
 
 
 class Aluno{
	 int mec;
	 String nome;
	 double teste[] = new double[3];
	 double nfinal;
	 }
