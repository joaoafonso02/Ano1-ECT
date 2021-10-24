
public class Excecoes {
    public static void main(String args[]) {
        int[] a = {1,3,55,4};
        int x;
        try {
            teste(88888);
            x = 5/0;
            System.out.println(x + a[6]);
            //} catch (Throwable e){  //apanha qq excecao
        } catch (ArithmeticException | IllegalArgumentException | ArrayIndexOutOfBoundsException | ExcecaoPropria e) {
            System.out.println("ERRO: " + e.getMessage());
        }
        //~ } catch (ArrayIndexOutOfBoundsException e) {
        //~ System.out.println("ERRO: " + e.getMessage());
        //~ }
    }

    public static  void teste(int n) throws IllegalArgumentException, ExcecaoPropria {
        if (n < 0) throw new IllegalArgumentException ("Erro 1");
        else if (n > 10000) throw new ExcecaoPropria("Erro, valor > 10000: " + n);
        System.out.printf("%04d\n",n);
    }
}

// CRIAR UMA CLASSE DE EXCECAO PROPRIA
class ExcecaoPropria extends Exception {
    public ExcecaoPropria(String erro) {
        super(erro);
    }
}
