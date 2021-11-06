package Innalistazadan1;

import java.util.Scanner;

public class zadanie5 {

    public static void main(String[] args) {
        Scanner skaner = new Scanner(System.in);
        System.out.println("Podaj 3 długości trójkąta");
        int a = skaner.nextInt();
        int b = skaner.nextInt();
        int c = skaner.nextInt();
        if (a + b <= c || a + c <= b || b + c <= a)
            System.out.println("Nie można utworzyć trójkąta");
        else
            System.out.println("Można utworzyć trójkąt");
        System.out.println(a + " " + b + " " + c);
    }
}
