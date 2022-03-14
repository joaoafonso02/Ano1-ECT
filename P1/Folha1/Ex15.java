import java.util.Scanner;

class Ex15 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.printf("%n%nTP1: ");
        double tp1 = scanner.nextDouble();
        System.out.printf("TP2: ");
        double tp2 = scanner.nextDouble();
        System.out.printf("TTP1: ");
        double ttp1 = scanner.nextDouble();
        System.out.printf("TTP2: ");
        double ttp2 = scanner.nextDouble();
        System.out.printf("TTP3: ");
        double ttp3 = scanner.nextDouble();
        System.out.printf("QA: ");
        double qa = scanner.nextDouble();

        double nota = tp1*0.25+tp2*0.35+ttp1*0.1+ttp2*0.1+ttp3*0.1+qa*0.1;

        System.out.printf("%nA nota final é %.2f.%n%n",nota);

        scanner.close();
    }
}

/*

tp1 -> 25%
tp2 -> 35%
ttp1 -> 10%
ttp2 -> 10%
ttp3 -> 10%
qa -> 10%

*/