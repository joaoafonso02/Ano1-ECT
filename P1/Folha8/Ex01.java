import java.util.Scanner;

public class Ex01 {
    static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        Hora inicio;  // tem de definir o novo tipo Hora!
        Hora fim;

        inicio = new Hora();
        inicio.h = 9;
        inicio.m = 23;
        inicio.s = 5;

        System.out.print("Começou às ");
        printHora(inicio);  // crie esta função!
        System.out.println(".");
        System.out.println("Quando termina?");
        fim = lerHora();  // crie esta função!
        System.out.print("Início: ");
        printHora(inicio);
        System.out.print(" Fim: ");
        printHora(fim);
        System.out.print(".\n");
    }

    public static Hora lerHora() {
        Hora hora = new Hora();
        System.out.print("Introduza: \n");
        hora.h = readIntRange("horas? ", 0, 23);
        hora.m = readIntRange("minutos? ", 0, 59);
        hora.s = readIntRange("segundos? ", 0, 59);
        return hora;
    }

    public static void printHora(Hora hora) {
        System.out.printf("%02d:%02d:%02d", hora.h, hora.m, hora.s);
    }

    public static int readIntRange(String message, int min, int max) {
        int n = 0;
        do{
            System.out.print(message);
            n = sc.nextInt();
        }while( n<min||n>max );
        return n;
    }
}

class Hora {
    int h = 0;
    int m = 0;
    int s = 0;
}

/**
EXEMPLO do pretendido:
$ java TestaHora
Começou às 09:23:05.
Quando termina?
horas? 11
minutos? 72
minutos? 7
segundos? 2
Início: 09:23:05 Fim: 11:07:02.
**/
