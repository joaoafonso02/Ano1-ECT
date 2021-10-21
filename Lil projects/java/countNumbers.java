import java.util.Scanner;

public class p410 {
	public static void main(String []args) {
		
	Scanner sc = new Scanner(System.in);
	
	int x, neg, pos, contn, contp, contbetween, contbetween2;
	
	neg = 0; pos = 0; contn = 0; contp = 0; contbetween = 0; contbetween2 = 0;
	
	System.out.println("\nList of numbers ending up with 0:");
	
	while(true) {
	
		x = sc.nextInt();
		
		if(x < 0){ neg = x; contn++; }
			
		else if(x > 0){ pos = x; contp++; }
		
		else if(x == 0) break;
		
		else if(x == 0) break;
			
			if(x > 100 && x < 1000) contbetween++;
		
			else if( x > -1000 && x < -100) contbetween2++;
			
		
	}
		System.out.printf("negative numbers: %d\n", contn);
		System.out.printf("positive numbers: %d\n", contp);
		System.out.printf("\nbetween 100 and 1000: %d\n", contbetween++);
		System.out.printf("\nbetween -100 and -1000: %d\n", contbetween2++);
		
	}
}
