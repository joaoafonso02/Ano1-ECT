import java.util.Scanner;

public class Ex11 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        int maior = Integer.MIN_VALUE;
        int menor = Integer.MAX_VALUE;
        System.out.print("\n\nIntroduza a lista de numeros inteiros positivos: ");
        int prevN = 0;
        while(true){
            int n = KB.nextInt();

            if( n==prevN*2 ){
                break;
            }
            if( n<=0 ){
                System.out.print("\nNumero não contabilizado ("+n+")!\n");
                continue;
            }

            if( maior<n ){
                maior = n;
                System.out.print("Novo maximo -> "+maior+"\n");
            }
            if( menor>n ){
                menor = n;
                System.out.print("Novo minimo -> "+menor+"\n");
            }
            prevN = n;
        }

        System.out.print("\nMaior: "+maior);
        System.out.print("\nMenor: "+menor+"\n\n");
    }
}
