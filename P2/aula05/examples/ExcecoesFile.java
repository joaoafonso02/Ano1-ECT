import java.io.*;
import java.util.*;

public class ExcecoesFile {
    public static void main(String args[]) {
        Scanner inputFile = null;
        try {
            // Abre ficheiro
            File fle = new File("in.txt");
            inputFile = new Scanner(fle);
            // Le e imprime o ficheiro
            while (inputFile.hasNext()) {
                System.out.println(inputFile.nextDouble());
            }
        } catch (InputMismatchException e) {
            System.out.println("ERRO: tipo de dados invalido");
        } catch (FileNotFoundException e) {
            System.out.println("ERRO: Ficheiro nao existe");
        }
        finally {
            // Fecha o ficheiro
            if (inputFile!=null)
                inputFile.close();
            System.out.println("CLOSED!");
        }
    }
}
