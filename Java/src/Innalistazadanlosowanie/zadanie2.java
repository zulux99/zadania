package Kolekcje;

import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class zadanie2 {

    public static void main(String[] args) {
        Scanner obiektKlasyScanner=new Scanner(System.in);
        int losowa = ThreadLocalRandom.current().nextInt(1, 100);
        System.out.println(losowa);
        int podana = 0;
        int licznik = 0;
        while (podana != losowa)
        {
            licznik ++;
            podana = obiektKlasyScanner.nextInt();
            if (podana < losowa)
                System.out.println("Większa");
            if (podana > losowa)
                System.out.println("Mniejsza");
            if (podana == losowa)
            {
                System.out.println("Wylosowana liczba to: " + losowa);
                System.out.println("Zgadłeś w " + licznik + " próbach");
            }
        }
    }
}
