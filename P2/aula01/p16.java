import java.util.Scanner;

public class p16 {
    public static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        String answer = "y";

        while(answer.equals("y")) {
            System.out.print("\nGuess the number I have (0-100): ");
            
            int RandomNumber = (int)(Math.random()*(100+1));
            int numberguessed, score = 0;
            do{
                numberguessed = numb();
                score++;
                if(numberguessed < RandomNumber) System.out.print("Your number is below the one I have! Try again: ");
                if(numberguessed > RandomNumber) System.out.print("Your number is above the one I have! Try again: ");
                if(numberguessed == RandomNumber) System.out.println("Congrats!! You guessed the number! ");
            }while(numberguessed != RandomNumber);
            
            System.out.printf("Well done you completed the game!! Score: %d%n", score);
            System.out.print("\nWant to restart the game?/n Answer(y/n): ");
            answer = sc.nextLine(); answer = sc.nextLine();
        }
        if(answer.equals("n")) System.out.println("\nGAME OVER!");
    }
    public static int numb() {
        int numb;
        do{
            numb = sc.nextInt();
            if(numb < 0 || numb > 100) System.out.print("Not a valid number! Try again: ");
        }while(numb < 0 || numb > 100);
        return numb;
    }
}
