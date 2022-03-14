import java.util.Arrays;
import java.util.Comparator;

public class Ex07 {
    public static void main(String[] args) {
        int min = 1; // included n>=min
        int max = 10; // excluded n<max
        int amount = 100;

        int list[] = generateList(min,max,amount);
        System.out.println("\nNumbers generated!");
        for(int i: list){
            System.out.print(i+" ");
        }

        int histograma[][] = generateHistograma(list);

        Arrays.sort(histograma, new Comparator<int[]>() { // usado para ordenar o array de duas dimensões, "melhor ignorar para já"
            public int compare(int[] a, int[] b) {
                return Integer.compare(b[1], a[1]);
            }
        });

        System.out.print("\n\nHistograma: ");
        for (int i=0; i<histograma.length-1 ;i++) { // usado para printar o histograma
            System.out.printf("\n|%3d | %3d ocorre %3d %s", histograma[i][0], histograma[i][0], histograma[i][1], histograma[i][1]==1?"vez":"vezes");
        }

        System.out.print("\n\n");
    }

    public static int[] generateList(int min, int max, int size) {
        int list[] = new int[size];

        for(int i=0; i<list.length ;i++){
            list[i] = (int) Math.floor(Math.random()*(max-min))+min;
        }

        return list;
    }

    public static int[][] generateHistograma(int[] list) {
        int histograma[][] = new int[1][2];

        for(int i=0; i<list.length ;i++){
            for(int j=0; j<histograma.length ;j++){
                if( histograma[j][0]==list[i] ){ // se elemento é o correspondente
                    histograma[j][1] += 1;
                    break;
                }else if( j+1==histograma.length ){ // se chegou ao ultimo elemento do histograma e nao encontrou um numero correspondente entao aumentar tamanho do array
                    histograma = incriseArraySize(histograma);
                    histograma[j][0] = list[i];
                    histograma[j][1] = 1;
                    break;
                }
            }
        }

        return histograma;
    }

    public static int[][] incriseArraySize(int[][] array) { // para aumentar o tamanho de um array precisa-se de criar um array novo com o tamanho desejado e depois copiar os valores antigos
        int newArray[][] = new int[array.length+1][2];

        for(int i=0; i<array.length ;i++){
            for(int j=0; j<array[i].length ;j++){
                newArray[i][j] = array[i][j];
            }
        }

        return newArray;
    }
}
