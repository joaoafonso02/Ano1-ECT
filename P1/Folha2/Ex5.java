import java.util.Scanner;

/*
public class Ex5 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // request inputs
        System.out.print("\nP1:\n");
        System.out.print("x: ");
        double p1X = KB.nextDouble();
        System.out.print("y: ");
        double p1Y = KB.nextDouble();

        System.out.print("\nP2:\n");
        System.out.print("x: ");
        double p2X = KB.nextDouble();
        System.out.print("y: ");
        double p2Y = KB.nextDouble();

        System.out.print("\nP3:\n");
        System.out.print("x: ");
        double p3X = KB.nextDouble();
        System.out.print("y: ");
        double p3Y = KB.nextDouble();

        System.out.print("\nP4:\n");
        System.out.print("x: ");
        double p4X = KB.nextDouble();
        System.out.print("y: ");
        double p4Y = KB.nextDouble();

        // calcs
        double topSide =    Math.sqrt(Math.pow(p2X-p1X,2)+Math.pow(p2Y-p1Y,2));
        double rightSide =  Math.sqrt(Math.pow(p3X-p2X,2)+Math.pow(p3Y-p2Y,2));
        double bottomSide = Math.sqrt(Math.pow(p4X-p3X,2)+Math.pow(p4Y-p3Y,2));
        double leftSide =   Math.sqrt(Math.pow(p1X-p4X,2)+Math.pow(p1Y-p4Y,2));

        if(topSide==rightSide&&rightSide==bottomSide&&bottomSide==leftSide){
            System.out.print("\nA figura é um quadrado.\n\n");
        }else{
            System.out.print("\nA figura não é um quadrado.\n\n");
        }

    }
}
*/

// or


public class Ex5{
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        double[][] points = new double[4][2];

        // request inputs
        System.out.print("\n\n");
        for(int i=0;i<points.length;i++){
            System.out.print("P"+(i+1)+":\nx: ");
            points[i][0] = KB.nextDouble();
            System.out.print("y: ");
            points[i][1] = KB.nextDouble();
        }

        for (int i = 0; i < points.length; i++) {
            double[] a = points[(i+0)%4];
            double[] b = points[(i+1)%4];
            double[] c = points[(i+2)%4];
            double angle = Math.toDegrees(Math.atan2(c[1]-b[1], c[0]-b[0]) - Math.atan2(a[1]-b[1], a[0]-b[0]));
            if(angle!=90&&angle!=-270){
                System.out.print("\n\nNão é Quadrado!\n\n");
                return;
            }
        }
        System.out.print("\n\nÉ Quadrado!\n\n");
    }
}