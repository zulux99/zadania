package Innalistazadan2;

import java.util.Scanner;

public class zadanie5 {

    public static void main(String[] args) {
        Scanner obiektKlasyScanner=new Scanner(System.in);
        System.out.print("Podaj przedział początkowy: ");
        int przedzialPoczatkowy = obiektKlasyScanner.nextInt();
        System.out.print("Podaj pzredział końcowy: ");
        int przedzialKoncowy = obiektKlasyScanner.nextInt();
        for (int i = przedzialPoczatkowy; i <= przedzialKoncowy; i++)
            System.out.println(i + " ");
    }
}
