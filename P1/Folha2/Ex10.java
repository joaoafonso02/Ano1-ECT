import java.util.Scanner;

public class Ex10 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // inputs
        System.out.print("\nDay: ");
        int day = KB.nextInt();
        System.out.print("Mês: ");
        int month = KB.nextInt();
        System.out.print("Ano: ");
        int year = KB.nextInt();
        
        int diasMesAnterior = -1;
        int diasMesAtual = -1;
        switch(month){
            case 1:
            case 8:
                diasMesAnterior = 31;
                diasMesAtual = 31;
                break;
            case 2:
                diasMesAnterior = 31;
                diasMesAtual = year%4==0 ? 29 : 28;
                break;
            case 3:
                diasMesAnterior = year%4==0 ? 29 : 28;
                diasMesAtual = 31;
                break;
            case 4:
            case 6:
            case 9:
            case 11:
                diasMesAnterior = 31;
                diasMesAtual = 30;
                break;
            case 5:
            case 7:
            case 10:
            case 12:
                diasMesAnterior = 30;
                diasMesAtual = 31;
                break;
            default:
                System.out.print("\n\nBAD THIGS ARE APPENING!!!!\n\n");
        }

        int prevDay = day-1;
        int nextDay = day+1;
        int prevMonth = month;
        int nextMonth = month;
        int prevYear = year;
        int nextYear = year;

        if(prevDay<1){
            prevMonth = month-1;
            if(prevMonth<1){
                prevMonth = 12;
                prevYear = year-1;
            }
            prevDay = diasMesAnterior;
        }else if(nextDay>diasMesAtual){
            nextMonth = month+1;
            if(nextMonth>12){
                nextMonth = 1;
                nextYear = year+1;
            }
            nextDay = 1;
        }

        System.out.printf("\nDia anterior: %02d/%02d/%04d",prevDay,prevMonth,prevYear);
        System.out.printf("\nDia seguinte: %02d/%02d/%04d\n\n",nextDay,nextMonth,nextYear);
    }
}
