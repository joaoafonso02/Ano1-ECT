import java.util.Scanner;

public class Ex08 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("\nIntroduza X: ");
        int x = KB.nextInt();
        System.out.print("Introduza Y: ");
        int y = KB.nextInt();

        int soma = 0;
        String s = "";
        System.out.print("\n  X |   Y | soma\n----------------");
        while( true ){
            s = "não";
            if( (double)x%2.0==1 ){
                soma+=y;
                s = "sim";
            }
            System.out.printf("\n%3d | %3d | %3s",x,y,s);
            if(x==1){break;}
            x/=2;
            y*=2;
        }
        System.out.print("\n----------------");
        System.out.print("\n\nSoma: "+soma+"\n\n");
    }
}
