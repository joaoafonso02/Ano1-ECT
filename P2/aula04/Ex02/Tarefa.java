public class Tarefa {
    private Data inicio;
    private Data fim;
    private String texto = "";

    public Tarefa(Data inicio, Data fim, String texto) {
        assert inicio.compareTo(fim) < 0 : "Invalid Dates";
        assert texto != null && texto != "": "Can't be empty";
        this.inicio = inicio;
        this.fim = fim;
        this.texto = texto;
    }

    public String toString() {
        return String.format("%s\t%s\t%s", inicio, fim, texto);
    }

    public boolean intersecta(Tarefa a){
        if(
            (inicio.compareTo(a.inicio())>=0 && inicio.compareTo(a.fim())<=0)||
            (fim.compareTo(a.inicio())>=0 && fim.compareTo(a.fim())<=0)
        ){
            return true;
        }
        return false;
    }

    public Data inicio() { return inicio; };
    public Data fim() { return fim; };
    public String texto() { return texto; };

}
