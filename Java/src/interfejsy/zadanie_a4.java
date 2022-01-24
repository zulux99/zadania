package interfejsy;

public class zadanie_a3
{
    public static void main(String[] args)
    {
        interface JakisInterfejs
        {
            int a = 5;
            double b = 3.14;
            void wyswietl();
        }
        class JakasKlasa
        {
            @Override
            public void wyswietl()
            {
                System.out.println("a = " + a + " b = " + b);
            }
        }
        JakasKlasa temp1 = new JakasKlasa();
            temp1.wyswietl();
    }
}
