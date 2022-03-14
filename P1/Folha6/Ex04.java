import java.util.Scanner;

public class P64 
{
    public static Scanner sc = new Scanner(System.in);
    
    public static void main (String[] args)
    {
        printer(getWell(makeHistogram(getArray(getSize()))));
    }
    
    public static int getSize()
    {
        System.out.print("Insira a quantidade de notas a analisar: ");
        return sc.nextInt();
    }
    
    public static int[] getArray(int size)
    {
        int[] array= new int[size];
        System.out.printf("Insira os valores do seu array: \n");
        for(int i=0;i<array.length; i++) array[i]= sc.nextInt();
        return array;
    }
    
    public static int[] makeHistogram(int[] array)
    {
        int[] histogram= new int[21];
        for(int i=0; i<histogram.length; i++) histogram[i]=0;
        for(int k=0; k<array.length; k++) histogram[array[k]]++;
        return histogram;
    }
    
    public static void printer(int[] histogram)
    {
        System.out.printf("\n Histograma de notas\n");
        for(int i=0; i<50; i++) System.out.print("-");
        System.out.println("");
        for(int i=20; i>=0; i--) 
        {
            System.out.printf(" %2d | ",i);
            for(int k=0; k<histogram[i]; k++) System.out.print("*");
            System.out.println("");
        }
    }
    
    public static int getMax(int[] histogram)
    {
		int max= histogram[0];
		for(int i=0; i<histogram.length; i++) if (max<histogram[i]) max= histogram[i];
		return max;
	}
	
	public static int[] getWell(int[] histogram)
	{
		int max = getMax(histogram);
		for (int i=0; i<histogram.length; i++) histogram[i]= (int)((histogram[i] * 50)/max);
		return histogram;
	}
}
