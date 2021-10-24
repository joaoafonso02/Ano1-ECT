import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.util.Scanner; 

public class p17 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws IOException{
        try {
            File file; 
            do{
                System.out.print("File name: ");
                String fileName = sc.nextLine();

                file = new File(fileName);
                System.out.println("Is directory? " + file.isDirectory());

            }while(!invalidFile(file));
            
            //System.out.println(readFile(file));
            PrintWriter write = new PrintWriter("Texto2.txt");
            write.print(readFile(file));
            write.close();
        }  catch(Exception e) {
            e.printStackTrace();
         }
    }

    public static boolean invalidFile(File file) {
        if(!file.isFile()) {
            System.out.println("ERROR: invalid file!");
            return false;
        } else System.out.println("Valid file!");
        if(!file.canRead()) {
            System.out.println("ERROR: Can't read this file");
            return false;
        }
        return true;
    }

    public static String readFile(File file) throws IOException{
        String fileData = "";
        Scanner scan = new Scanner(file);

        while(scan.hasNextLine()) {
            fileData += scan.nextLine() + "\n";
        }
        scan.close();
        return fileData;
    }
}
