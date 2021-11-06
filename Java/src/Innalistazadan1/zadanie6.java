package Innalistazadan1;

import java.util.Scanner;

public class zadanie6 {

    public static void main(String[] args) {
        Scanner skaner = new Scanner(System.in);
        System.out.println("Podaj 3 długości trójkąta");
        int a = skaner.nextInt();
        int b = skaner.nextInt();
        int c = skaner.nextInt();
        if (a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a)
            System.out.println("Można utworzyć trójkąt prostokątny");
        else
            System.out.println("Nie można utworzyć trójkąta prostokątnego");
        System.out.println(a + " " + b + " " + c);
    }
}
