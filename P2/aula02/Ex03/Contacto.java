package Ex03.pt.ua.prog1;

public class Contacto {
  private String nome;
  private String telefone;
  private String eMail;

  public Contacto(String _nome, String _telefone) {
    nome = _nome;
    telefone = _telefone;
  }

  public Contacto(String _nome, String _telefone, String _eMail) {
    nome = _nome;
    telefone = _telefone;
    eMail = _eMail;
  }

  public String nome(){ return nome.toUpperCase(); }
  public String telefone(){ return telefone; }
  public String eMail(){ return eMail; }

}
