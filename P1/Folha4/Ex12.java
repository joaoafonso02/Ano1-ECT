import java.util.Scanner;

public class Ex12 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args){
        int allInpar = 0; // 0->nenhum numero   1->todos impar   2->algum par
        
        System.out.print("\nIntroduza uma lista de números inteiros positivos que termine em 0: ");

        while(true){
            int n = KB.nextInt();

            if( n<0 ){
                System.out.print("Numero negativo nao contabilizado!\n");
                continue;
            }

            if( n==0 ){
                break;
            }else if( n%2==0 ){ // se par
                allInpar = 2;
                break;
            }else{ // se impar
                allInpar = 1;
            }
        }

        switch(allInpar){
            case 0:
                System.out.print("\nNenhum numero contabilizado\n\n");
                break;
            case 1:
                System.out.print("\nA sequência de números é exclusivamente constituída por números ímpares\n\n");
                break;
            case 2:
                System.out.print("\nA sequência de números não é exclusivamente constituída por números ímpares\n\n");
                break;
            default:
                System.err.print("\nswitch error!");
                break;
        }
    }
}
