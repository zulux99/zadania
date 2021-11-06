package Innalistazadan2;

public class zadanie4 {

    public static void main(String[] args) {
        System.out.println("Liczby podzielne przez 3: ");
        for (int i = 1; i <= 100; i++)
        {
            if (i % 3 == 0)
                System.out.print(i + " ");
        }
        System.out.print("\n");
        System.out.println("Liczby podzielne przez 5: ");
        for (int i = 1; i <= 100; i++)
        {
            if (i % 5 == 0)
                System.out.print(i + " ");
        }
        System.out.print("\n");
        System.out.println("Liczby podzielne przez 3 i 5 jednocześnie: ");
        for (int i = 1; i <= 100; i++)
        {
            if (i % 5 == 0 && i % 3 == 0)
                System.out.print(i + " ");
        }
        System.out.print("\n");
        System.out.println("Liczby podzielne przez 3 lub 5: ");
        for (int i = 1; i <= 100; i++)
        {
            if (i % 5 == 0 || i % 3 == 0)
                System.out.print(i + " ");
        }
    }
}
