import java.util.Scanner;
import java.io.*;

public class p114 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
    
        //menu variáveis
        Aluno[] turma = new Aluno[20];

        while(true) {
            menu();

            //escolher opção
            int option = sc.nextInt();
            switch(option) {
                //exit
                case 0:
                    System.out.println("\nPrograma terminado.");
                    System.exit(0);

                case 1: 
                   dados(turma);
                    break;

                case 2: 
                    foundNumMec(turma);
                    break;

                case 3:
                    xd(turma);
                    break;  

                case 4:
                    ordemMec(turma);
                    break;

                case 5:
                    ordemNotafinal(turma);
                    break;

                case 6:
                    media(turma);
                    break;

                case 7:
                    bestAluno(turma);
                    break;

                case 8:
                    weight(turma);
                    break;

                case 9:
                    saveDataFile(turma);
                    break;

                //option < 0 || option > 8
                default: 
                    System.out.println("\nO número que introduziu não pertence á lista apresentada.");
            } 
        }     
    }

    //menu
    public static void menu() {
        System.out.println("\nGestão de uma turma:");
        System.out.println("1 - Inserir informação da turma");
        System.out.println("2 - Mostrar informação de um aluno");
        System.out.println("3 - Alterar informação de um aluno");
        System.out.println("4 - Listar os alunos");
        System.out.println("5 - Listar os alunos ordenados por nota final");
        System.out.println("6 - Média das notas finais");
        System.out.println("7 - Melhor aluno");
        System.out.println("8 – Inserir pesos dos vários testes");
        System.out.println("9 - gravar dados dos alunos num ficheiro");
        System.out.print("0 - Terminar o programa\nOpção: ");  
    }

    //dados alunos
    public static void dados(Aluno turma[]) {
        for(int i = 0; i < turma.length; i++) {
            turma[i] = new Aluno();
            System.out.print("\nNúmero mecanográfico - "); turma[i].noMec = sc.nextInt();
                if(turma[i].noMec == 0) {
                    System.out.println("Número mecanográfico introduzido: 0");
                    break; 
                }
            System.out.print("Nome do aluno - "); 
            turma[i].nome = sc.nextLine(); turma[i].nome = sc.nextLine();
            
            System.out.println("Notas de 3 testes(0-20)"); 
            System.out.print("1º teste: "); turma[i].notaTeste1 = validNotas();
            System.out.print("2º teste: "); turma[i].notaTeste2 = validNotas();
            System.out.print("3º teste: "); turma[i].notaTeste3 = validNotas();
        }
    }


    //procura/info de 1 aluno
    public static void foundNumMec(Aluno turma[]) {
        System.out.print("\nNúmero mecanográfico do aluno que procura: ");
        int search = sc.nextInt();
        boolean found = false;
        int i = -1;

        do{
         i++;
            if(turma[i] == null || i == 20) break;
            if(search == turma[i].noMec) found = true;
        } while(!found);


        if(found) {
            System.out.printf("Aluno %d encontrado.%n", search);
            System.out.println("\nInfo do aluno: \nNúmero mecanográfico: " + search + "\nNome: " + turma[i].nome + "\nTeste 1: " + turma[i].notaTeste1 + "\nTeste 2: " + turma[i].notaTeste2 + "\nTeste 3: " + turma[i].notaTeste3);  
        } else {
            if(i==0) { 
                System.out.println("Turma não encontrada");
            } else {
                System.out.println("Aluno não encontrado");  
            } 
        }
        
    }

     //validar notas 0-20
    public static double validNotas() {
        double nota;
        do{ 
            nota = sc.nextDouble();
            if(nota < 0 || nota > 20){
                System.out.print("Nota(s) Inválida. Introduza outra: ");
            }
        } while(nota < 0 || nota > 20);
            
        return nota;
    }  
                
    //alterar info de 1 aluno
    public static void xd(Aluno turma[]) {
        System.out.print("\nNúmero mecanográfico do aluno que procura: ");
        int search = sc.nextInt();
        boolean found = false;
        boolean haveSpace = false;
        int i = -1;

        do{
            i++;
               if(turma[i] == null || i == 20) break;
               if(search == turma[i].noMec) {
                found = true; break;
               }
        } while(!found);

            int j;
            for(  j = 0; j < turma.length; j++) {
                if(turma[j] == null ) haveSpace = true;
                else haveSpace = false;
            }

            if(found) {
                System.out.printf("Aluno %d encontrado.%n", search);
            } else {
                if(j==0) { 
                    System.out.println("Turma não encontrada");
                } else {
                    System.out.println("Aluno não encontrado");  
                } 
            }

            if(haveSpace && !found) System.out.println("Aluno adicionado á turma.");
            else if (!haveSpace) System.out.println("Turma cheia.");
                        
            System.out.print("\nPretende alterar as notas do aluno em questão?(s/n) ");
            String resp = sc.nextLine(); resp = sc.nextLine();

            if(resp.equals("s")) {
                System.out.print("\nPretende alterar a nota do teste (1,2,3) ou todos? ");
                String resp2 = sc.nextLine(); 
            
            
                if(resp2.equals("todos")) {
                    System.out.print("teste 1: "); turma[i].notaTeste1 = validNotas();
                    System.out.print("teste 2: "); turma[i].notaTeste2 = validNotas();
                    System.out.print("teste 3: "); turma[i].notaTeste3 = validNotas();
                }
                else if(resp2.equals("1")) { 
                    System.out.print("teste 1: "); 
                    turma[i].notaTeste1 = validNotas();
                }
                else if(resp2.equals("2")) { 
                    System.out.print("teste 2: "); 
                    turma[i].notaTeste2 = validNotas();
                }
                else if(resp2.equals("3")) { 
                    System.out.print("teste 3: "); 
                    turma[i].notaTeste3 = validNotas();
                }   
        }
    }

    //ordenar por número Mecanográfico
    public static void ordemMec(Aluno turma[]) {
        int changer;

        int i;                 //turma.length - 1
        for( i = 0; i < turma.length - 1 ; i++) {
            for(int j = i + 1; j < turma.length; j++) {
                if(turma[i].noMec > turma[j].noMec) {
                    changer = turma[i].noMec;
                    turma[i].noMec = turma[j].noMec;
                    turma[j].noMec = changer;
                }
            }
        }

        for(int k = 0; k < turma.length; k++) System.out.println(turma[k].noMec);

    }
    

    public static void ordemNotafinal(Aluno turma[]) {
        int changer;

        int i;                 //turma.length - 1
        for( i = 0; i < turma.length - 1 ; i++) {
            for(int j = i + 1; j < turma.length; j++) {
                if(turma[i].notaFinal > turma[j].notaFinal) {
                    changer = turma[i].notaFinal;
                    turma[i].notaFinal = turma[j].notaFinal;
                    turma[j].notaFinal = changer;
                }
            }
        }

        for(int k = 0; k < turma.length; k++) System.out.println(turma[k].notaFinal);

    }

    public static void weight(Aluno[] turma) {
        System.out.println("Peso dos testes:");
        System.out.print("Peso 1º teste: "); double p1 = percentagem();
        System.out.print("Peso 2º teste: "); double p2 = percentagem();
        System.out.print("Peso 3º teste: "); double p3 = percentagem();

        for(int i = 0; i < turma.length; i++) {
            int k = (int)(turma[i].notaTeste1 * p1 + turma[i].notaTeste2 * p2 + turma[i].notaTeste3 * p3);
            turma[i].notaFinal = k;
        }

        for(int i = 0; i < turma.length; i++) System.out.println(turma[i].notaFinal);
    }


    public static double percentagem() {
        double valor0a100;

        do{
            valor0a100 = sc.nextDouble();
        } while(valor0a100 < 0 || valor0a100 > 100);

        return valor0a100 / 100;
    }

    public static double media(Aluno[] turma) {
        double media = 0;
        double soma = 0;

        for(int i = 0; i < turma.length; i++) {
           soma += turma[i].notaFinal;
           media = soma / 20;
        }

        return media;
    }


    public static void bestAluno(Aluno[] turma) {
        int best  = turma[0].notaFinal, noBest  = turma[0].noMec;

        for(int i = 0; i < turma.length; i++) {
            if(turma[i].notaFinal > best) {
                best = turma[i].notaFinal;
                noBest = turma[i].noMec;
            }
        }
        System.out.printf("\nO aluno %d é o melhor aluno da turma com uma nota final de %d", noBest, best);
    }


    public static void saveDataFile(Aluno[] turma) {
        File file;
        System.out.print("Nome do ficheiro que pretende guardar a informação da turma: "); String fileName = sc.nextLine();
        PrintWriter writer = new PrintWriter(fileName);
        String fileContent = "";
        writer.println("Informação da turma: ");
        for(int i = 0; i < turma.length; i++) {

            writer.println("Número mecanográfico: " + turma[i].noMec);
            writer.println("Nome do aluno: " + turma[i].nome);
            writer.println("Notas de 3 testes(0-20):");
            writer.println("1º teste: " + turma[i].notaTeste1);
            writer.println("2º teste: " + turma[i].notaTeste2);
            writer.println("3º teste: " + turma[i].notaTeste3);
        }
        writer.close();

    } 
}

class Aluno {
    int noMec; 
    double notaTeste1;
    double notaTeste2, notaTeste3;
    int notaFinal;
    String nome;
}
