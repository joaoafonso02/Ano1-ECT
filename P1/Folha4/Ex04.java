import java.util.Scanner;

public class Ex04 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) throws InterruptedException {
        System.out.print("\nGenerating Number");
        for(int i=0;i<10;i++){
            Thread.sleep(100);
            System.out.print(".");
        }
        System.out.print("Number is ready!\n");
        Thread.sleep(500);
        System.out.print("\nTry to guess it\n\n");
        
        int secret = (int)(100.0*Math.random()) + 1;

        int counter = 0;
        int n = 0;
        while( n!=secret ){
            Thread.sleep(250);
            System.out.printf("Try %d: ", counter+1);
            n = KB.nextInt();
            if(n<1||n>100){
                System.out.printf("Invalid Number (1<n<100)!\n\n");
                continue;
            }
            counter++;
            Thread.sleep(1000);
            if( n>secret ){
                System.out.print("\nHigh\n\n");
            }else{
                System.out.print("\nLow\n\n");
            }
        }
        System.out.print("That's right! Well done.\n\n");
    }
}
