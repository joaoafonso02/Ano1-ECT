import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
// import java.util.*;   // => "error: reference to LinkedList is ambiguous"
// java.util.LinkedList colide com p2utils.LinkedList!
import p2utils.*;

public class FilterLines
{
  public static void main(String[] args) throws IOException{
    if (args.length != 1) {
      err.printf("Usage: java -ea FilterLines text-file\n");
      exit(1);
    }
 
    // Criar listas para as linhas curtas, médias e longas.
    LinkedList<String> small =  new LinkedList<String>();
    LinkedList<String> medium =  new LinkedList<String>();
    LinkedList<String> large =  new LinkedList<String>();

   
    // exceções poderiam ser intercetadas e mostrar mensagem de erro.
    try{
      File fil = new File(args[0]);
      Scanner sf = new Scanner(fil);
      while (sf.hasNextLine()) {
        String line = sf.nextLine();
        // Guardar linha na lista apropriada, consoante o tamanho.
        if(line.length() < 20) {
          small.addLast(line);
        } else if(line.length() > 20 && line.length() < 40) {
          medium.addLast(line);
        } else{
          large.addLast(line);
        }
      }
      sf.close();
    } catch(FileNotFoundException e) {
      System.err.println("File not found!");
    }
  
    // Escrever conteúdo das listas...
    out.println("Curtas---|---------|---------|---------|---------");
    small.print();

    out.println("Médias---|---------|---------|---------|---------");
    medium.print();

    out.println("Longas---|---------|---------|---------|---------");
    large.print();
  }
}
