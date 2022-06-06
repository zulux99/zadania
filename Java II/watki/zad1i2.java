package watki;

import java.util.Arrays;
import java.util.Random;

public class zad1i2 {
    public static void main(String[] args) throws InterruptedException {
        int [][] wylosowane = new int [16][20000];
        int [][] wylosowaneKopia = new int [16][20000];
        for (int i = 0; i < 16; i++) {
            for (int j = 0; j < 20000; j++) {
                Random los = new Random();
                int wylosowana = los.nextInt(2000000001);
                wylosowane[i][j] = wylosowana;
                wylosowaneKopia[i][j] = wylosowana;
            }
        }
        for (int i = 0; i < 16; i++) {
            int finalI = i;
            Thread thread = new Thread(() -> {
                Arrays.sort(wylosowaneKopia[finalI]);
            });
            thread.start();
            thread.join();
        }
        System.out.print(Arrays.deepEquals(wylosowane, wylosowaneKopia));
    }
}
