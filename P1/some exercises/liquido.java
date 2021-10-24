import java.util.Scanner; 

public class liquido {
    static Scanner sc =  new Scanner(System.in); // metodo de introducao de dados
    
   public static void main(String[] args) { //funcao main
        System.out.print("\nIntroduza o valor de comprimento do seu array: ");
        //menu variaveis
        int num = sc.nextInt();
        int[] array = new int[num];

        //chamar funcoes
        sequence(array);
        System.put.print("\nMaximo: " + GetMaxValue(array));
        System.put.print("Minimo: " +  GetMinValue(array));
    }
    //funcao que devolve o array
    public static int[] sequence(int[] array) {
        int i;
        for(i = 0; i < array.length; i++) {
            array[i] = sc.nextInt();

            if(array[i] == 0) break;
        }
        System.out.println("Array:");
        for(int j = 0; j < i; j++) {
            System.out.print(array[j]+ " ");
        }
        return array;
    }
    //funcao que devolve o maximo valor do array
    public static int GetMaxValue(int[] array) {
        int MaxValue = array[0];
        for(int i = 0; i < array.length; i++) {
            if(array[i] > MaxValue) {
                MaxValue = array[i];
            }
        }
        return MaxValue;
    }
    //funcao que devolve o minimo valor do array
    public static int GetMinValue(int[] array) {
        int MinValue = array[0];
        for(int i = 0; i < array.length; i++) {
            if(array[i] < MinValue) {
                 MinValue = array[i];
            }
        }
        return MinValue;
    }
    
}
