import java.util.Scanner;

public class untitled {
  public static void main(String[] args) {
    char a;
    a = f1(10);
    System.out.printf("%c\n", a);
    f2(a);
    f2('z');
  }

  public static char f1(int n){
    if(n > 0)
      return 'a';
    else
     return 'b';
  }

  public static void f2(char c){
    switch(c)
    {
      case 'a':
        System.out.println("aveiro");
        break;
      case 'b':
        System.out.println("barra");
        break;
      default:
        System.out.println("outros");
    }
  }



	
 }



