import java.util.Scanner;

public class Ex02 {
    public static final Scanner KB = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println(f(5));
        System.out.println(max(5.2,2.5));
        System.out.println(max(5,2));
        System.out.println(poly3(4,3,5,2,1));
        System.out.println(fact(5));
        System.out.println(getIntPos());
        System.out.println(getIntRange(100,1000));
        printNtimes(10, "done");
    }

    public static double f(double n){
        return 1.0/1.0+Math.pow(n,2);
    }

    public static double max(double a, double b){
        return a>b ? a : b;
    }

    public static int max(int a, int b){
        return a>b ? a : b;
    }

    public static double poly3(double a, double b, double c, double d, double x){
        return a*Math.pow(x,3) + b*Math.pow(x,2) + c*x + d;
    }

    public static int fact(int n){
        int fact = 1;
        for(int i=1;i<=n;i++){
            fact *= i;
        }
        return fact;
    }

    public static int getIntPos(){
        int n = 0;
        do{
            System.out.print("Introduza Numero Inteiro Positivo: ");
            n = KB.nextInt();
        }while( n<=0 );
        return n;
    }

    public static int getIntRange(int min, int max){
        int n = KB.nextInt();
        while( n<min||n>max ){
            System.out.printf("Número inválido. Introduza inteiro (%d a %d): ",min,max);
            n = KB.nextInt();
        }
        return n;
    }

    public static void printNtimes(int n, String text){
        for(int i=0;i<n;i++) System.out.print(text);
    }
}
