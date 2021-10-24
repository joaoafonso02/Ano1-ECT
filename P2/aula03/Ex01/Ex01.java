import static java.lang.System.*;
import java.util.Scanner;

public class Ex01 {
  static final Scanner in = new Scanner(System.in);
  public static void main(String[] args) {
    
    Data today = new Data();
    out.printf("Today is %s\n", today);

    Data[] dates = {new Data("987-12-31"), new Data("988-01-01"),
                    new Data("2000-02-29"), new Data("2018-02-27"),
                    new Data("2018-2-28"), new Data("2018-03-1")};

    for (Data date1: dates) {
      out.printf("%s: %s\n", date1, date1.extenso());
    }

    for (Data date1: dates) {
        out.println();
        for(Data date2: dates) {
            int compare = date1.compareTo(date2);
            String op;
            if(compare < 0) op = "<";
            else if(compare > 0) op = ">";
            else op = "=";

            out.printf("%s %s %s \n", date1, op, date2);
        }
    }
    
  }
}


