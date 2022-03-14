class Ex01{
    public static void main(String[] args) {
        System.out.println("main");
        double r = sqr(9);
        System.out.print(r+"\n");
    }

    public static double sqr(double n){
        return Math.sqrt(n);
    }
}