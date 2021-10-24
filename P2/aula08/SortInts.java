import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

public class SortInts
{
  public static void main(String[] args) throws IOException {
    SortedListInt list = new SortedListInt();

    for (int i = 0; i < args.length; i++) {
      File file = new File(args[i]);
      Scanner sc = new Scanner(file);
      while(sc.hasNextLine()) {
        String info = sc.nextLine();
        try{
          int numbers = Integer.parseInt(info);
          list.insert(numbers);
        }catch(NumberFormatException e) {
          //ignores
        }
      }
      sc.close();
    }

    while
  }

}


