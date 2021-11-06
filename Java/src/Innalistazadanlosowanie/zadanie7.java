package Innalistazadanlosowanie;

import java.util.concurrent.ThreadLocalRandom;

public class zadanie7 {

    public static void main(String[] args) {
        int[] losoweLiczby = new int[6];
        int[] wylosowane = new int[6];
        for (int i = 0; i < 6; i++)
        {
            losoweLiczby[i] = ThreadLocalRandom.current().nextInt(1, 50);
            wylosowane[i] = losoweLiczby[i];
            for (int j = 0; j < i; j++)
            {
                while (losoweLiczby[i] == wylosowane[j]) {
                    losoweLiczby[i] = ThreadLocalRandom.current().nextInt(1, 50);
                    wylosowane[i] = losoweLiczby[i];
                    j = 0;
                }
            }
        }
        for (int i: losoweLiczby)
            System.out.print(i + " ");
    }
}
