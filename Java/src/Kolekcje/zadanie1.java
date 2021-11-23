package Kolekcje;

import java.math.BigInteger;
import java.util.*;
import java.util.concurrent.ThreadLocalRandom;

class zadanie1 {
    public static void main(String[] args) {
        Scanner obiektKlasyScanner = new Scanner(System.in);
        List<Integer> listaLiczb = new ArrayList<>();
        for (int i = 0; i < 6; i++) {
            System.out.println("Podaj liczbę od 1 do 49");
            int liczba = obiektKlasyScanner.nextInt();
            listaLiczb.add(liczba);
        }
        List<Integer> wylosowane = new ArrayList<>();
        long iloscProb = 0;
        do {
            wylosowane.clear();
            for (int i = 0; i < 6; i++) {
                wylosowane.add(ThreadLocalRandom.current().nextInt(1, 50));
            }
            iloscProb++;
        }
        while (!listaLiczb.equals(wylosowane));
        long lata = (iloscProb - (iloscProb % 365)) / 365;
        long dni = iloscProb % 365;
        System.out.println("Wylosowano liczby, zajęło to " + lata + " lat " + dni + " dni");
        System.out.println(listaLiczb);
    }
}