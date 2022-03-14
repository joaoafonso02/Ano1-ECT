import java.util.Scanner;

public class Ex4 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // request inputs
        System.out.print("\nMês: ");
        int month = KB.nextInt();
        System.out.print("Ano: ");
        int year = KB.nextInt();

        if(month==2){
            int diaBisseixto = 0;
            if(year%4==0){
                diaBisseixto = 1;
            }
            System.out.printf("%nO mês %d do ano %d tem %d dias.%n%n", month, year, 28+diaBisseixto);
        }else if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){
            System.out.printf("%nO mês %d do ano %d tem 31 dias.%n%n", month, year);
        }else{
            System.out.printf("%nO mês %d do ano %d tem 30 dias.%n%n", month, year);
        }
    }
}
