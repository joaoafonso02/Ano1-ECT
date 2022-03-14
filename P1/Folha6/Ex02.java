import java.util.Scanner;

class Ex02 {
    public static final Scanner KB = new Scanner(System.in);

    public static void main(String[] args) {
        int inputs[] = new int[100];

        System.out.print("\n\nIntroduza os valores: ");
        int i;
        for(i=0; i<100 ;i++){
            inputs[i] = KB.nextInt();
            if(inputs[i]<0){
                break;
            }
        }

        System.out.print("Introduza numero que pretende contar: ");
        int n = getIntRange(0, Integer.MAX_VALUE);

        int counter = 0;
        for(int j=0; j<i ;j++){
            if( inputs[j]==n ){
                counter++;
            }
        }

        System.out.printf("\nO número %d aparece %d vezes.", n, counter);
        

        System.out.print("\n\n");
    }

    public static int getIntRange(int min, int max){
        int n = KB.nextInt();
        while( n<min||n>max ){
            System.out.printf("Número inválido. Introduza inteiro (%d a %d): ",min,max);
            n = KB.nextInt();
        }
        return n;
    }
}