import java.util.Scanner;

public class zadanie1 {

    public static void main(String[] args) {
        Scanner obiektKlasyScanner=new Scanner(System.in);
        System.out.print("Obliczę pole powierzchni koła, podaj promień: ");
        double  promien = obiektKlasyScanner.nextDouble();
        double pole = 3.14 * promien * promien;
        System.out.println("Pole powierzchni koła wynosi: " + pole);

    }
}
