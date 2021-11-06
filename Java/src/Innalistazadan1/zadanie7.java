package Innalistazadan1;

import java.util.Scanner;

public class zadanie7 {

    public static void main(String[] args) {
        Scanner skaner = new Scanner(System.in);
        System.out.print("Podaj a: ");
        int a = skaner.nextInt();
        System.out.print("Podaj b: ");
        int b = skaner.nextInt();
        System.out.print("Podaj c: ");
        int c = skaner.nextInt();
        double delta = Math.pow(b, 2) - 4 * a * c;
        if (delta > 0)
        {
            double x1 = (-b - Math.sqrt(delta)) / (2 * a);
            double x2 = (-b + Math.sqrt(delta)) / (2 * a);
            System.out.println("x1 = " + x1 + "\nx2 = " + x2);
        }
        else if (delta == 0)
        {
            double x = -b / 2.0 * a;
            System.out.println("x = " + x);
        }
        else
            System.out.println("Brak miejsc zerowych");
    }
}
