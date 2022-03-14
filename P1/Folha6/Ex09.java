import java.util.Scanner;

public class Ex09 {
    public static final Scanner KB = new Scanner(System.in);

    public static void main(String[] args) {
        int sizes[] = getAandB(); // {Am,An,Bm,Bn}

        double A[][] = getMatriz(sizes[0],sizes[1]);
        double B[][] = getMatriz(sizes[2],sizes[3]);

        System.out.print("\nMatriz A:");
        printMatriz(A);
        System.out.print("\n\nMatriz B:");
        printMatriz(B);

        double C[][] = multiplyMatriz(A,B);

        System.out.print("\n\nMatriz C:");
        printMatriz(C);

        System.out.print("\n\n");
    }

    public static int nextIntRange(int min, int max) {
        int n = KB.nextInt();
        if( n<min || n>max ){
            System.out.printf("Número fora do alcance, tente um número entre %d e %d: ", min, max);
            n = nextIntRange(min, max);
        }
        return n;
    }

    public static int[] getAandB() {
        int sizes[] = new int[4]; // {Am,An,Bm,Bn}
        System.out.print("\n\nIntroduza as dimensões da matriz A (m*n): ");
        sizes[0] = nextIntRange(1, Integer.MAX_VALUE);
        sizes[1] = nextIntRange(1, Integer.MAX_VALUE);
        System.out.print("\n\nIntroduza as dimensões da matriz B (m*n): ");
        sizes[2] = nextIntRange(1, Integer.MAX_VALUE);
        sizes[3] = nextIntRange(1, Integer.MAX_VALUE);

        if( sizes[1] != sizes[2] ){
            System.out.print("Tamanhos de matrizes não compativeis, An deve ser igual a Bm.");
            return getAandB();
        }

        return sizes;
    }

    public static double[][] getMatriz(int m, int n) {
        double matriz[][] = new double[m][n]; // m=linhas e n=colunas

        System.out.print("\nIntroduza a matriz:\n");
        for(int i=0; i<m ;i++){
            for(int j=0; j<n ;j++){
                matriz[i][j] = KB.nextDouble();
            }
        }

        return matriz;
    }

    public static void printMatriz(double[][] matriz){
        for(int i=0; i<matriz.length ;i++){
            System.out.print("\n|");
            for(int j=0; j<matriz[i].length ;j++){
                System.out.printf(j==matriz[i].length-1?"%5.2f|":"%5.2f ", matriz[i][j]);
            }
        }
    }

    public static double[][] multiplyMatriz(double[][] A, double[][] B) {
        double[][] C = new double[A.length][B[0].length]; // o tamanho de c é o numero de linhas de A e o numero de colunas de B

        for(int i=0; i<C.length ;i++){ // para cada linha de C
            for(int j=0; j<C[i].length ;j++){ // para cada elemento da linha de C
                int soma = 0;
                for(int k=0; k<A[1].length; k++){ // para cada multiplicaçao
                    soma += A[i][k] * B[k][j];
                }
                C[i][j] = soma;
            }
        }

        return C;
    }
}

/*  input test 1: 
            3 2 2 3  1 -2 1 0 2 3  0 -1 0 1 0 2   
        result:
            Matriz C:
            |-2,00 -1,00 -4,00|
            | 0,00 -1,00  0,00|
            | 3,00 -2,00  6,00|

    input test 2: 
            2 3 3 2  0 -1 0 1 0 2  1 -2 1 0 2 3
        result:
            Matriz C:
            |-2,00 -1,00 -4,00|
            | 0,00 -1,00  0,00|
            | 3,00 -2,00  6,00|
*/