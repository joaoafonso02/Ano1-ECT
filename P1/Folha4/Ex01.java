import java.util.Scanner;

class Ex01 {
    public static final Scanner KB = new Scanner(System.in);

    public static void main(String[] args) {
        int counter = 0;
        int n = 0;

        do{
            System.out.print("Next: ");
            n = KB.nextInt();
            counter++;
        }while( n<0 );

        System.out.printf("\n%d numeros introduzidos.\n\n", counter-1);
    }
}