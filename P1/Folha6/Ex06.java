import java.util.Arrays;
import java.util.Scanner;

public class Ex06 {
    public static final Scanner KB = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.print("\n\nIntroduza a frase:\n");
        String frase = KB.nextLine();

        int histograma[] = new int['z'-'a'+1];
        Arrays.fill(histograma, 0);

        for(int i=0; i<frase.length() ;i++){
            char c = frase.charAt(i);
            if( c>='a'&&c<='z' ){
                histograma[c-'a']++;
            }
        }

        System.out.print("\nCaracteres utilizados: ");
        for(int i=0; i<histograma.length ;i++){
            if( histograma[i]!=0 ){
                System.out.print(Character.toString((char) i+'a') + " ");
            }
        }

        System.out.print("\n\n");
    }
}
