import java.util.Scanner;

public class Ex05 {
    public static final Scanner KB = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.print("\n\nIntroduza o número de elementos: ");
        int n = nextIntRange(1,Integer.MAX_VALUE);

        double list[] = getList(n);

        double avg = avg(list);

        double s = desvPadrao(list, avg);

        System.out.printf("\nA média é: %f", avg);
        System.out.printf("\nO desvio padrão é: %f", s);

        System.out.print("\nOs valores superiores à média são: ");
        for(int i=0; i<n ;i++){
            if( list[i]>avg ){
                System.out.print(list[i] + (i==n-1?"":", "));
            }
        }

        System.out.print("\n\n\n");
    }

    public static int nextIntRange(int min, int max) {
        int n = KB.nextInt();
        if( n<min || n>max ){
            System.out.printf("Número fora do alcance, tente um número entre %d e %d: ", min, max);
            n = nextIntRange(min, max);
        }
        return n;
    }

    public static double[] getList(int n) {
        double list[] = new double[n];
        for(int i=0; i<n ;i++){
            System.out.printf("%dº: ", i+1);
            list[i] = KB.nextInt();
        }
        return list;
    }

    public static double avg(double[] list) {
        double avg = 0;
        for(int i=0; i<list.length ;i++){
            avg += list[i]/list.length;
        }
        return avg;
    }

    public static double desvPadrao(double[] list, double avg) {
        double s = 0;
        for(int i=1; i<=list.length ;i++){
            s += Math.pow(list[i-1] - avg, 2);
        }
        return Math.sqrt( s/list.length );
    }
}
