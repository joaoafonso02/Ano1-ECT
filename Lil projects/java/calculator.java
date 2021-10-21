import java.util.Scanner; 

public class calculadora {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        //System.out.print("number1: ");
        //double num1 = sc.nextDouble();

        //System.out.print("number2: ");
        //double num2 = sc.nextDouble();

        //System.out.printf("%3.1f + %3.1f = %3.1f %n", num1, num2,num1 + num2);
        //System.out.printf("%3.1f * %3.1f = %3.1f %n", num1, num2,num1 * num2);
        //System.out.printf("%3.1f - %3.1f = %3.1f %n", num1, num2,num1 - num2);
        //System.out.printf("%3.1f / %3.1f = %3.1f %n", num1, num2,num1 / num2);

        while(true) {
            System.out.print("\nCalculate(Ex:1 +|-|*|/ 2): ");
            String count = sc.nextLine();
            String[] countSplit = count.split(" ");

            if(countSplit[1].equals("+") || countSplit[1].equals("-") ||  countSplit[1].equals("*") || countSplit[1].equals("/")) {
                int numb1 = Integer.parseInt(countSplit[0]);
                String op = countSplit[1];
                int numb2 = Integer.parseInt(countSplit[2]);

                if(op.equals("+")) System.out.println( numb1 + op + numb2 + "= " + (numb1 + numb2));
                else if(op.equals("-")) System.out.println( numb1 + op + numb2 + "= " + (numb1 - numb2));
                else if(op.equals("*")) System.out.println( numb1 + op + numb2 + "= " + (numb1 * numb2));
                else if(op.equals("/"))System.out.println( numb1 + op + numb2 + "= " + (numb1 / numb2));

            } else System.err.println(1);
        }
        
    }
}
