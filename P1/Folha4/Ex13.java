import java.util.Scanner;

public class Ex13 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args){
        char resp = 'y';
        while( resp!='n' ){

            System.out.print("\n\nNumero gerado, tenta adivinha-lo!\n\n");
            int secret = (int)(100.0*Math.random()) + 1;

            int counter = 0;
            int n = 0;
            while( n!=secret ){
                System.out.printf("Try %d: ", counter+1);
                n = KB.nextInt();
                if(n<1||n>100){
                    System.out.printf("Numero invalido (1<n<100)!\n\n");
                    continue;
                }
                counter++;
                if( n>secret ){
                    System.out.print("High\n\n");
                }else{
                    System.out.print("Low\n\n");
                }
            }
            System.out.print("That's right! Well done.\n\n");

            System.out.print("Novo jogo (s/n)? ");
            resp = KB.next().charAt(0);

        }
    }
}
