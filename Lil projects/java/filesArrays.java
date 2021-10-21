import java.util.Scanner;
import java.io.*;

public class p73 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws IOException { //funcao main
        System.out.print("\nIntroduza o valor de comprimento do seu array: ");
        menu variaveis
        int num = sc.nextInt();
        int[] array = new int[num];

        //chamar funcoes
        sequence(array);
        System.out.println("\nMaximo: " + GetMaxValue(array));
        System.out.print("Minimo: " +  GetMinValue(array));
       
        System.out.print("Para concluir escreva o nome do seu ficheiro: ");
        
        File file;
        int addNumbers;

        do{
            String fileName = sc.nextLine();
            file = new File(fileName);
        } while(!validFile(file));

        Scanner scanNumbers = new Scanner(file);

        PrintWriter writer = new PrintWriter("/Users/joaoafonso/Desktop/texts/newfilep73.txt");
    
        String fileContent = "";
        while(scanNumbers.hasNextInt()) {
            fileContent += scanNumbers.nextInt() + "\n";
           
        }
        writer.print(fileContent);
        writer.println("Numeros introduzidos:");

        System.out.println("Introduza numeros adicionais ao seu novo ficheiro: ");

        do{
            addNumbers = sc.nextInt();
            System.out.println("Mais números: ");
            writer.println(addNumbers);
        } while(addNumbers != 0);

    
        scanNumbers.close();
        writer.close();
    }
    
    //valida o ficheiro
    public static boolean validFile(File file) {
        // verificações pedidas no enunciado
        if(!file.isFile()){
            System.err.println("ERRO: '" + file.getName() + "' não é um ficheiro.");
            return false;
        }
        if(!file.canRead()){
            System.err.println("ERRO: '" + file.getName() + "' sem permissão de leitura.");
            return false;
        }
        return true;
    }


    //funcao que devolve o array
    public static int[] sequence(int[] array) {
        int i;
        for(i = 0; i < array.length; i++) {
            array[i] = sc.nextInt();

            if(array[i] == 0) break;
        }
        System.out.println("Array:");
        for(int j = 0; j < i; j++) { //printar o array
            System.out.print(array[j]+ " ");
        }
        return array;
    }
    //funcao que devolve o maximo valor do array
    public static int GetMaxValue(int[] array) {
        int MaxValue = array[0]; //guarda o valor do 1o elemento do array
        for(int i = 0; i < array.length; i++) {
            if(array[i] > MaxValue) {
                MaxValue = array[i];
            }
        }
        return MaxValue;
    }
    //funcao que devolve o minimo valor do array
    public static int GetMinValue(int[] array) {
        int MinValue = array[0]; //guarda o valor do 1o elemento do array
        for(int i = 0; i < array.length; i++) {
            if(array[i] < MinValue) {
                 MinValue = array[i];
            }
        }
        return MinValue;
    }
}
