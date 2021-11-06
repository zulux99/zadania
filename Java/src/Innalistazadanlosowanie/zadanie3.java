package Innalistazadanlosowanie;

import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class zadanie3 {

    public static void main(String[] args) {
        int[] losoweLiczby = new int[6];
        for (int i= 0; i < 6; i++)
        {
            losoweLiczby[i] = ThreadLocalRandom.current().nextInt(1, 50);
        }
        for (int i: losoweLiczby)
        {
            System.out.print(i + " ");
        }
    }
}
