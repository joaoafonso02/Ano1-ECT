import java.util.Scanner;

class Ex01 {
    public static final Scanner KB = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.print("\n\nIntroduza numero de elementos: ");
        int n = getIntRange(1, Integer.MAX_VALUE);

        int inputs[] = new int[n];

        System.out.print("\nIntroduza os numeros separados por espaço: ");
        for(int i=0; i<n ;i++){
            inputs[i] = KB.nextInt();
        }

        System.out.print("\nNúmeros na ordem inversa: \n");
        for(int i=n-1; i>=0 ;i--){
            System.out.println(inputs[i]);
        }

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
