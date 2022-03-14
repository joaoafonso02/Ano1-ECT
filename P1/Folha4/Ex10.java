import java.util.Scanner;

public class Ex10 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("\nIntroduza a lista de números: ");

        String positivos = "";
        String negativos = "";
        String b100a1000 = "";
        String bN100aN1000 = "";

        while(true){
            double n = KB.nextDouble();
            if( n>0 ){
                positivos += Double.toString(n)+" ";
            }else if( n<0 ){
                negativos += Double.toString(n)+" ";
            }else if( n>=100 && n<=1000 ){
                b100a1000 += Double.toString(n)+" ";
            }else if( n<=-100 && n>=-1000 ){
                bN100aN1000 += Double.toString(n);
            }else if( n==0 ){
                break;
            }
        }

        System.out.print("\nNúmeros positivos -> "+(positivos==""?"empty":positivos));
        System.out.print("\nNúmeros negativos -> "+(negativos==""?"empty":negativos));
        System.out.print("\nNúmeros em [100...1000] -> "+(b100a1000==""?"empty":b100a1000));
        System.out.print("\nNúmeros em [-1000...-100] -> "+(bN100aN1000==""?"empty":bN100aN1000)+"\n\n");
    }
}
