import java.util.Scanner;

public class Ex09 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("\n\nIntroduza as notas!\n\n");

        int soma = 0;
        int counter = 0;

        while(true){
            System.out.print("Nota? ");
            int n = KB.nextInt();
            if(n<0){
                break;
            }else if(n>20){
                System.out.print("\nInvalid Grade! Try again");
            }
            soma += n;
            counter++;
        }
        System.out.printf("\nSoma = %d\nMédia = %.1f\n\n",soma,(double)soma/counter);
    }
}
