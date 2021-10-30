import java.util.Scanner;

public class zadanie4 {

    public static void main(String[] args) {
        Scanner skaner = new Scanner(System.in);
        System.out.println("Podaj 3 liczby");
        int a = skaner.nextInt();
        int b = skaner.nextInt();
        int c = skaner.nextInt();
        for (int i = 0; i < 3; i++) {
            if (a > b) {
                int temp = a;
                a = b;
                b = temp;
            }
            if (b > c) {
                int temp = b;
                b = c;
                c = temp;
            }
        }
            System.out.println(a + " " + b + " " + c);
    }
}
