package Innalistazadan2;

import java.util.Scanner;

public class zadanie7 {

    public static void main(String[] args) {
        Scanner obiektKlasyScanner=new Scanner(System.in);
        System.out.print("Podaj ilość: ");
        int ilosc = obiektKlasyScanner.nextInt();
        int a = 0;
        int b = 1;
        System.out.print(0 + " ");
        for (int i = 1; i < ilosc - 1; i++)
        {
            System.out.print(a + b + " ");
            int temp = a;
            a = b;
            b = temp + b;
        }
    }
}
