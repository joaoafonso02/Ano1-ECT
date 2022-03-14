import java.util.Scanner;

public class Ex12 {
    public static final Scanner KB = new Scanner(System.in);
    public static void main(String[] args) {
        // inputs request 1º Square
        System.out.print("1º Square:\n  P1:\n    x: ");
        double p1x = KB.nextDouble();
        System.out.print("    y: ");
        double p1y = KB.nextDouble();
        System.out.print("  P2:\n    x: ");
        double p2x = KB.nextDouble();
        System.out.print("    y: ");
        double p2y = KB.nextDouble();
        System.out.print("  P3:\n    x: ");
        double p3x = KB.nextDouble();
        System.out.print("    y: ");
        double p3y = KB.nextDouble();
        System.out.print("  P4:\n    x: ");
        double p4x = KB.nextDouble();
        System.out.print("    y: ");
        double p4y = KB.nextDouble();
        // inputs request 2º Square
        System.out.print("2º Square:\n  V1:\n    x: ");
        double v1x = KB.nextDouble();
        System.out.print("    y: ");
        double v1y = KB.nextDouble();
        System.out.print("  V2:\n    x: ");
        double v2x = KB.nextDouble();
        System.out.print("    y: ");
        double v2y = KB.nextDouble();
        System.out.print("  V3:\n    x: ");
        double v3x = KB.nextDouble();
        System.out.print("    y: ");
        double v3y = KB.nextDouble();
        System.out.print("  V4:\n    x: ");
        double v4x = KB.nextDouble();
        System.out.print("    y: ");
        double v4y = KB.nextDouble();

        
    }

    public boolean twoLinesIntersect(double ax,double ay, double bx, double by, double cx,double cy,double dx,double dy){
        double a1 = by - ay;
        double b1 = ax - bx;
        double c1 = a1*(ax) + b1*(ay);

        double a2 = dy - cy;
        double b2 = cx - dx;
        double c2 = a2*(cx) + b2*(cy);

        double determinant = a1*b2 - a2*b1;

        return determinant==0;
    }
}
