import java.util.Scanner;

import org.graalvm.compiler.phases.common.RemoveValueProxyPhase; 

public class p15 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Array:");
        int[] list = new int[50];
        int sum = 0, average = 0;

        for(int i = 0; i < list.length; i++) {
            list[i] = sc.nextInt();
            if(list != null ) {
                sum += list[i];
                if(list[i] == 0) { 
                    average = sum / (i-1);
                    break;
                }
            }   
        }
        if(list[0] == 0) System.out.println("Empty list -> sum = 0 -> average cannot be calculated!");
        else {
            System.out.println("Sum = " + sum);
            System.out.println("Average = " + average);
        }            
    }
}
