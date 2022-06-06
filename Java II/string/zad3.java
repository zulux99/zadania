package string;

import java.util.Scanner;

public class zad3 {
    public static void main(String[] args) {
        char[] tab;
        String tekst = "Witaj świecie";
        tab = tekst.toCharArray();
        Scanner obiektKlasyScanner=new Scanner(System.in);
        char literaZakodowana;
        int przesuniecie;
        przesuniecie = obiektKlasyScanner.nextInt();
        StringBuilder slowoZakodowane = new StringBuilder();
        for (char literaOdkodowana:tab){
            literaZakodowana = (char) (literaOdkodowana + przesuniecie % 26);
            if (literaZakodowana > 90) {
                literaZakodowana -= 26;
            }
            if (literaZakodowana < 65) {
                literaZakodowana += 26;
            }
            slowoZakodowane.append(literaZakodowana);
        }
        System.out.print(slowoZakodowane);
    }
}