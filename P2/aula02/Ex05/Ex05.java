package Ex05;
import static java.lang.System.*;

public class Ex05 {
    public static void main(String[] args) {
        Data today = new Data();
        Data natal = new Data(25-1,12,today.ano()-1);
        do{
            natal.seguinte();
            out.println(natal.extenso());
        }while(!natal.toString().equals(today.toString()));
    }
}
