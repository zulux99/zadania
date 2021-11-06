package Innalistazadan1;

import java.util.Scanner;

public class zadanie3 {

    public static void main(String[] args) {
        Scanner skaner = new Scanner(System.in);
        System.out.println("Ile masz lat?");
        int wiek = skaner.nextInt();
        if (wiek < 18)
            System.out.println("Nie możesz głosować");
        else if (wiek >= 18 & wiek < 35)
            System.out.println("Możesz głosować, ale nie możesz zostać wybranym na prezydenta");
        else if (wiek >= 30)
            System.out.println("Możesz kandydować na prezydenta państwa");
    }
}
