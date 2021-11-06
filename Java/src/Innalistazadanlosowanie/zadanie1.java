package Innalistazadanlosowanie;

import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class zadanie1 {

    public static void main(String[] args) {
        Scanner obiektKlasyScanner=new Scanner(System.in);
        System.out.println("Podaj minimum");
        int minimum = obiektKlasyScanner.nextInt();
        System.out.println("Podaj maksimum");
        int maksimum = obiektKlasyScanner.nextInt();
        int losowa = ThreadLocalRandom.current().nextInt(minimum, maksimum + 1);
        System.out.println(losowa);
    }
}
