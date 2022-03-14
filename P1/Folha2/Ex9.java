import java.util.Scanner;

public class Ex9 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // request inputs
        System.out.print("\n\nIntroduza um valor em celcius (X.Xc) ou em fahrenheit (X.Xf): ");
        char[] input = KB.next().toCharArray();

        String numberString = "";
        for (int i = 0; i < input.length; i++) {
            if(input[i]=='c'){
                double celcius = Double.parseDouble(numberString);
                System.out.printf("\n%.2f ºCelsius é equivalente a %.2f ºFahrenheit\n\n",celcius,1.8*celcius+32);
                return;
            }else if(input[i]=='f'){
                double fahrenheit = Double.parseDouble(numberString);
                System.out.printf("\n%.2f ºFahrenheit é equivalente a %.2f ºCelcius\n\n",fahrenheit,(fahrenheit-32)/1.8);
                return;
            }
            numberString+=input[i];
        }
    }
}
