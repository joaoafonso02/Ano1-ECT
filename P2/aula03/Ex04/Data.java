import java.util.Calendar;

public class Data {
  private int dia, mes, ano;

  /** Inicia esta data com o dia de hoje. */
  public Data() {
    // Aqui usamos a classe Calendar da biblioteca standard para obter a data atual.
    Calendar today = Calendar.getInstance();
    dia = today.get(Calendar.DAY_OF_MONTH);
    mes = today.get(Calendar.MONTH) + 1;
    ano = today.get(Calendar.YEAR);
  }

  /** Inicia a data a partir do dia, mes e ano dados. */
  public Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }  

  /** Inicia a data a partir do formato ISO */
  public Data(String iso) {
    String[] values = iso.split("-");
    if(values.length!=3) { System.err.println("Invalid ISO");System.exit(0); }
    ano = Integer.parseInt(values[0]);
    mes = Integer.parseInt(values[1]);
    dia = Integer.parseInt(values[2]);
    if(!dataValida(dia,mes,ano)) { System.err.println("Invalid ISO");System.exit(0); }
  }

  /** Devolve esta data segundo a norma ISO 8601. */
  public String toString() {
    return String.format("%04d-%02d-%02d", ano, mes, dia);
  }

  /** Indica se ano é bissexto. */
  public static boolean bissexto(int ano) {
    return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
  }

  // Crie métodos para obter o dia, mes e ano da data.
  public int dia(){ return dia; }
  public int mes(){ return mes; }
  public int ano(){ return ano; }

  /** Dimensões dos meses num ano comum. */
  private static final
  int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

  /** Devolve o número de dias do mês dado. */
  public static int diasDoMes(int mes, int ano) {
    return bissexto(ano) ? (mes==2 ? 29 : diasMesComum[mes-1]) : diasMesComum[mes-1];
  }

  /** Devolve o mes da data por extenso. */
  public static final String[] nomesMes = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outobro", "Novembro", "Dezembro"};
  public String mesExtenso() {
    return nomesMes[mes-1];
  }


  /** Devolve esta data por extenso. */
  public String extenso() {
    return dia+" de "+mesExtenso()+" de "+ano;
  }

  /** Indica se um terno (dia, mes, ano) forma uma data válida. */
  public static boolean dataValida(int dia, int mes, int ano) {
    if(mes<1||mes>12) return false;
    if(dia<1||dia>diasDoMes(mes, ano)) return false;
    return true;
  }

  /** Avança um dia */
  public void seguinte() {
    dia++;
    if(dia>diasDoMes(mes, ano)){
        dia = 1;
        mes++;
        if(mes>12){
            mes = 1;
            ano++;
        }
    }
  }

  /** Compara datas */
  public int compareTo(Data y){
    if(this.ano>y.ano){ return 1; }
    if(this.ano<y.ano){ return -1; }
    if(this.mes>y.mes){ return 1; }
    if(this.mes<y.mes){ return -1; }
    if(this.dia>y.dia){ return 1; }
    if(this.dia<y.dia){ return -1; }
    return 0;
  }


}
