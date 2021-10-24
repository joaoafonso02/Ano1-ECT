/*
ExcFinally.java

O bloco finally é sempre executado.

Execute:
    java ExcFinally
e introduza: nada, E, R ou outra coisa
para ver o efeito com excepções diferentes.

Quando não há excepção, o programa executa:
1. o bloco try completo,
2. depois bloco finally,
3. depois o código seguinte.

Quando há excepção e é interceptada num catch:
1. executa o try até ao erro,
2. depois o bloco catch,
3. depois o bloco finally e
4. depois o código seguinte (se o catch não fez return nem throw).

Quando há excepção e não é interceptada:
1. executa o try até ao erro,
2. depois o bloco finally e
3. depois a função é interrompida e a excepção é propagada para a função que chamou.

Copyright 2021 João Manuel de Oliveira e Silva Rodrigues <jmr@ua.pt>
*/

import static java.lang.System.*;
import java.util.Scanner;

public class ExcFinally {

    private static Scanner sc = new Scanner(in);
    
    public static void main (String[] args) {
        out.println("Input nothing, E, R or anything else.");
        String s = sc.nextLine().toUpperCase();
        try {
            out.println("TRY-START");
            riskyOperation(s);
            out.println("TRY-END");
        } catch (RuntimeException e) {
            out.println("ERRO: " + e.getMessage());
            return;
        } catch (Exception e) {
            out.println("AVISO: " + e.getMessage());
        } finally {
            out.println("FINALLY");
        }
        out.println("END");
    }

    public static void riskyOperation(String s) throws Exception {
        switch (s) {
        case "":
            out.println("NO PROBLEM");
            break;
        case "R":
            throw new RuntimeException(s);
        case "E":
            throw new Exception(s);
        default:
            throw new Error(s);
        }
    }

}
