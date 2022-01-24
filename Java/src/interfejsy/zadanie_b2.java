package interfejsy;

public class zadanie_b2 {
    public static void main(String[] args) {

        interface PierwszyInterfejs {

            public void f(int a);
        }

        interface DrugiInterfejs {

            public void f(double b);

        }
        class MojaKlasa implements PierwszyInterfejs, DrugiInterfejs {
            public void f() {
                System.out.println("f");
            }

            @Override
            public void f(double b) {

            }

            @Override
            public void f(int a) {

            }
        }
    }

}
