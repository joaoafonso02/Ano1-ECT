import java.util.Scanner;

public class Ex1 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args){
        // request input from user
        System.out.print("\n\nTPG1 (20%): ");
        double tpg1 = KB.nextDouble();
        System.out.print("TPG2 (30%): ");
        double tpg2 = KB.nextDouble();
        System.out.print("EI (50%): ");
        double ei = KB.nextDouble();

        // calculations
        double nota = tpg1*0.2+tpg2*0.3+ei*0.5;

        if(nota>=9.5){
            System.out.println("\nO aluno encontra-se aprovado!\n");
        } else{
            System.out.println("\nO aluno encontra-se reprovado :(\n");
        }

    }
}
