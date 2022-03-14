import java.util.Scanner;

class Ex1 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        while(true){
            System.out.print("\nIntroduza numero de repetições: ");
            int n = KB.nextInt();
                
            if(n>=0){
                for(int i=0; i<n ;i++){
                    System.out.println("P1 é fixe!");
                }
                break;
            }else{
                System.out.print("\nNumero introduzido inválido! Tente outra vez.\n");
            }
        }
    }
}