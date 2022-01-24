package interfejsy;

public class zadanie_b3 {
    public static void main(String[] args) {
        interface WyswietlaObrazWydajeDzwiek {
            public void wyswietl();
            public void graj();
        }
        class Telewizor implements WyswietlaObrazWydajeDzwiek {
            public void graj() {
                // instrukcje metody graj
            }
            public void wyswietl() {
                // instrukcje metody wyswietl
            }
        }
    }
}
