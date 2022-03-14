import java.util.Scanner;

public class Ex03 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("Introduza uma lista de números reais:\n");
        
        double firstN = KB.nextDouble();

        int counter = 1;
        double max = firstN;
        double min = firstN;
        double avg = firstN;
        
        while(true){
            double n = KB.nextDouble();

            if( n==firstN ){break;}

            max = Math.max(max,n);
            min = Math.min(min,n);
            avg = ((avg*counter)+n)/(counter+1);
            counter++;
        }


        System.out.printf("\nMáximo: %.2f\nMínimo: %.2f\nMédia: %.2f\nNº Elementos: %d\n\n",max,min,avg,counter);
    }
}
