package string;

import java.util.Scanner;

public class zad4i5{
    public static void main(String[] args) {
        char[] tab;
        Scanner obiektKlasyScanner=new Scanner(System.in);
        String wpis = obiektKlasyScanner.nextLine();
        tab = wpis.toCharArray();
        int wynik = 0;
        for (char c:tab){
            wynik = wynik + Character.getNumericValue(c);
        }
        System.out.print(wynik);
    }
}