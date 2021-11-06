package Innalistazadan1;

import java.util.Scanner;

public class zadanie2 {

    public static void main(String[] args) {
        Scanner obiektKlasyScanner=new Scanner(System.in);
        System.out.println("Podzielę a przez b");
        System.out.print("Podaj a: ");
        int a = obiektKlasyScanner.nextInt();
        System.out.print("Podaj b: ");
        int b = obiektKlasyScanner.nextInt();
        double wynik = (double) a/b;
        System.out.println(wynik);
    }
}
